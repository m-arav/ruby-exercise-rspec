# Display components
class UserView
  def self.read_in_data
    ['Name', 'City', 'Age', 'File name'].each do |content|
      print "#{content} : "
      yield
    end
  end

  def self.read_in_choice
    print 'Enter your choice : '
    yield
  end

  def self.list_plugins(list_of_plugins)
    list_of_plugins.each_with_index do |index, content|
      puts "#{index}. #{content}"
    end
  end
end
