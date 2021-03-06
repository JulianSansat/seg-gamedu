class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @character = Character.where(user_id: current_user).first
    @inventory = Inventory.where(user_id: current_user).first
    item = Item.find(params[:item_id])
    if item.price > @character.gold
      redirect_to store_index_path, notice: 'Voce não tem ouro suficiente'
    else
      @line_item = LineItem.new
      @line_item.inventory = @inventory
      @line_item.item = item
      @character.gold -= item.price
      @character.save

      respond_to do |format|
        if @line_item.save
          format.html { redirect_to characters_url, notice: 'Novo item Comprado' }
          format.json { render :show, status: :created, location: @line_item }
        else
          format.html { render :new }
          format.json { render json: @line_item.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @character.gold += @line_item.item.price
    @character.save
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Item vendido' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:item_id, :inventory_id)
    end
end
