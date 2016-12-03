# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# Rails.application.config.assets.precompile += %w( bootstrap.css )
# Rails.application.config.assets.precompile += %w( bootstrap.min.js )

Rails.application.config.assets.precompile += %w( vendor/revslider/rs-plugin/css/settings.css )
Rails.application.config.assets.precompile += %w( __packed.css )
Rails.application.config.assets.precompile += %w( fontello/css/fontello.css )
Rails.application.config.assets.precompile += %w( fontello/css/animation.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( shortcodes.css )
Rails.application.config.assets.precompile += %w( kidscare.css )
Rails.application.config.assets.precompile += %w( responsive.css )
Rails.application.config.assets.precompile += %w( novo_reino.css )
Rails.application.config.assets.precompile += %w( vendor/new-royalslider/lib/royalslider/royalslider.css )
Rails.application.config.assets.precompile += %w( vendor/jquery-1.11.3.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-migrate.min.js )
Rails.application.config.assets.precompile += %w( vendor/revslider/rs-plugin/js/jquery.themepunch.tools.min.js )
Rails.application.config.assets.precompile += %w( vendor/revslider/rs-plugin/js/jquery.themepunch.revolution.min.js )
Rails.application.config.assets.precompile += %w( custom/__main.js )
Rails.application.config.assets.precompile += %w( vendor/__packed.js )
Rails.application.config.assets.precompile += %w( custom/shortcodes_init.js )
Rails.application.config.assets.precompile += %w( custom/_utils.js )
Rails.application.config.assets.precompile += %w( custom/_front.js )
Rails.application.config.assets.precompile += %w( vendor/diagram/diagram.raphael.min.js )
Rails.application.config.assets.precompile += %w( vendor/new-royalslider/lib/royalslider/jquery.royalslider.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.css )