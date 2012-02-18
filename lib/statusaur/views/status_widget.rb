require 'statusaur/controllers/status_responder.rb'

module Statusaur
  class StatusWidget < Shoes::Widget

    def initialize(opts = {})
      s = flow do
        extend Statusaur::StatusResponder

        border peachpuff, :stroke_width => 2

        opts[:image] || "assets/default.png"

        avatar = image opts[:image], :width => 48, :height => 48

        avatar.click do
          open_webview
        end

        opts[:status] || "[ Error retrieving status ]"

        status = stack :margin_left => 5, :margin_bottom => 3, :width => app.cslot.width-5-50-18 do
          i = tagline span(opts[:status], :size => 10)
        end
      end
    end
  end
end
