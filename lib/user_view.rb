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
end
