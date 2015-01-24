WebConsoleFilter = ->(controller) do
  controller.console if controller.params[:web_console]
end

ApplicationController.before_action(WebConsoleFilter) if defined?(WebConsole)
