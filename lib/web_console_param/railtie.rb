require 'rails/railtie'

module WebConsoleParam
  class Railtie < ::Rails::Railtie
    initializer 'web_console_param.configure_controller' do
      WebConsoleFilter = ->(controller) do
        controller.console if controller.params[:web_console]
      end

      ActionController::Base.before_action(WebConsoleFilter) if defined?(WebConsole)
    end
  end
end
