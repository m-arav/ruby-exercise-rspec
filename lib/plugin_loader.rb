# Plugin loader functionality
class PluginLoader
  attr_accessor :available_plugins, :plugin_file, :plugin_directory
  def initialize
    @available_plugins = []
    @plugin_file = nil
    @plugin_directory = '../plugins/'
  end

  def find_plugins
    Dir.chdir('plugins')
    Dir.glob('*.rb') do |file|
      @available_plugins << file
    end
    @available_plugins = [0] if @available_plugins.empty?
    Dir.chdir('..')
    @available_plugins
  end

  def load_plugin(choice)
    @plugin_file = @available_plugins[choice]
    require_relative "#{plugin_directory}#{@plugin_file}"
  end
end
