require 'user_view'
describe UserView do
  context '.read_in_data' do
    it 'must respond_to' do
      expect(UserView).to respond_to(:read_in_data)
    end
  end
  context '.read_in_choice' do
    it 'must respond_to' do
      expect(UserView).to respond_to(:read_in_choice)
    end
  end
  context '.list_plugins' do
    it 'must respond_to' do
      expect(UserView).to respond_to(:list_plugins).with(1).argument
    end
  end
end
