require_relative 'plugin_loader'
require_relative 'user_model'
require_relative 'user_view'
# controlling logic
class Controller
  attr_accessor :choice, :file_name, :data_object
  def initialize
    @plugin = PluginLoader.new
  end

  def capture_user_input
    result = []
    result = UserView.read_in_data
    @file_name = result[3]
    @data_object = UserModel.new(result[0], result[1], result[2])
  end

  def write_format
    class_name = convert_to_class_name(@call_list[@choice])
    class_object = Object.const_get(class_name)
    class_object.write_format(@data_object, @file_name)
  end

  def convert_to_class_name(file_name)
    class_name = file_name[0].upcase + file_name[1..-4]
    class_name[class_name.index('_') + 1] = \
      class_name[class_name.index('_') + 1].upcase
    class_name.sub('_', '')
  end

  def start
    @call_list = @plugin.find_plugins
    UserView.list_plugins(@call_list)
    @choice = UserView.read_in_choice - 1
    @plugin.load_plugin(@choice)
    capture_user_input
    write_format
  end
end
