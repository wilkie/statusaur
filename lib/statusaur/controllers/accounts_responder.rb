module Statusaur
  module AccountsResponder
    def add_button_click
    end

    def username_change(text)
      puts text
    end

    def password_change(text)
      puts "*" * text.length
    end
  end
end
