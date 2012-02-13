require 'statusaur/controllers/accounts_responder'

module Statusaur
  class AccountsWindow
    def initialize(app)
      @app = app
    end

    def open
      @app.instance_eval do
        window :title => "Accounts",
               :width => 175 do
          extend Statusaur::AccountsResponder

          para "Username: "

          username = edit_line(:width => 150) do
            username_change(username.text)
          end

          para "Password: "
          
          password = edit_line(:width => 150) do
            password_change(password.text)
          end
        end
      end
    end
  end
end
