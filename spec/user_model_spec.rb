require 'user_model'
describe UserModel do
  subject { UserModel.new('name', 'city', 'age') }
  describe '#initilize' do
    context 'when initialized' do
      it 'should set name' do
        expect(subject.user_name).to eql('name')
      end
      it 'should set city' do
        expect(subject.user_city).to eql('city')
      end
      it 'should set age' do
        expect(subject.user_age).to eql('age')
      end
    end
  end
end
