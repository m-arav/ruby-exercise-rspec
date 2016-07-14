# Input Handler
class IoHandler
  def self.input_handler
    @@input = gets.chomp
  end

  def self.input
    @@input
  end
end
