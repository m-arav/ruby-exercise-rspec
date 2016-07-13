# Plugin loader functionality
class PluginLoader
  attr_accessor :available_plugins, :plugin_file
  def initialize
    @available_plugins = []
    @plugin_file = nil
  end

  def find_plugins
    Dir.chdir('plugins')
    Dir.glob('*.rb') do |file|
      @available_plugins << file
    end
    @available_plugins = [0] if @available_plugins.empty?
  end

  def load_plugin(choice)
    @plugin_file = @available_plugins[choice]
    require_relative "../plugins/#{@plugin_file}"
  end
end
