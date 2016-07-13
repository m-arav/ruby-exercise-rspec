require 'user_view'
describe UserView do
  context '.read_in_data' do
    it 'should be responsive' do
      expect(UserView).to respond_to(:read_in_data)
    end
  end
  context '.read_in_choice' do
    it 'should be responsive' do
      expect(UserView).to respond_to(:read_in_choice)
    end
  end
end
