require_relative 'io_handler'
# Display components
class UserView
  def self.read_in_data
    result = []
    ['Name', 'City', 'Age', 'File name'].each do |content|
      print "#{content} : "
      result << IoHandler.input_handler
    end
    result
  end

  def self.read_in_choice
    print 'Enter your choice : '
    IoHandler.input_handler.to_i
  end

  def self.list_plugins(list_of_plugins)
    list_of_plugins.each_with_index \
      { |val, index| puts "#{index + 1})  #{val}" }
  end
end
