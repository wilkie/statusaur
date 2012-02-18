require 'statusaur/controllers/status_responder.rb'

module Statusaur
  class StatusWidget < Shoes::Widget

    def initialize(opts = {})
      s = flow do
        extend Statusaur::StatusResponder

        opts[:image] || "assets/default.png"

        avatar = image opts[:image], :width => 48, :height => 48

        avatar.click do
          open_webview
        end

        opts[:status] || "[ Error retrieving status ]"

        stack do
          para opts[:status], size: 10
        end
      end
    end
  end
end
