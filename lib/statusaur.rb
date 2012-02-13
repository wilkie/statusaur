require 'bundler'
Bundler.require

require 'green_shoes'

require "statusaur/version"

module Statusaur
  def self.run
    Shoes.app :title => "Statusaur", :width => 300, :height => 100 do
      para "HEY"
      button "Accounts" do
        window :title => "Accounts" do
          para "Foo"
        end
      end
    end
  end
end
