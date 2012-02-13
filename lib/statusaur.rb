require 'bundler'
Bundler.require

require 'green_shoes'

require 'statusaur/version'

require 'statusaur/views/main_window'

module Statusaur
  def self.run
    MainWindow.new.open
  end
end
