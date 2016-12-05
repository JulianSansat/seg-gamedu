class Lesson < ActiveRecord::Base
      public
      def youtubeRegExp(url)
        url.match(/(youtu\.be\/|youtube\.com\/(watch\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/)[5]
      end
end
