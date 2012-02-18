require 'statusaur/views/accounts_window'
require 'statusaur/views/status_widget'

module Statusaur
  class MainWindow
    def open
      Shoes.app :title => "Statusaur",
                :width => 250,
                :height => 350 do
        button "Accounts" do
          Statusaur::AccountsWindow.new(self).open
        end

        para "Timeline:"

        status_widget :image => "http://twimg0-a.akamaihd.net/profile_images/1806587733/wilkie_avatar_shrug_reasonably_small.png", 
                      :status => "@zackweiner Great talk in PGH. But, are you sure Meriweather is an expletive? My Czech friends just look confused when I yell it at them..."
        status_widget :image => "http://twimg0-a.akamaihd.net/profile_images/1806587733/wilkie_avatar_shrug_reasonably_small.png", 
                      :status => "@ashedryden YOU DANCE LIKE THIS http://t.co/8wPyXwz3 /via @maryloulenhart"
      end
    end
  end
end
