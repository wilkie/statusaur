require 'statusaur/views/accounts_window'

module Statusaur
  class MainWindow
    def open
      Shoes.app :title => "Statusaur",
                :width => 250,
                :height => 350 do
        button "Accounts" do
          Statusaur::AccountsWindow.new(self).open
        end

        para "Updates:"
      end
    end
  end
end
