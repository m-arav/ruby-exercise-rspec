require 'user_model'
describe UserModel do
  describe '#initilize' do
    context 'when initialized' do
      it 'should recieve arguments' do
        expect(UserModel.new).to raise_error
      end
    end
  end
end
