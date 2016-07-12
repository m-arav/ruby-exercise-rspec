require 'user_model'
describe UserModel do
  describe '#initilize' do
    context 'when initialized' do
      it 'should raise error if 0 arg passed' do
        expect { UserModel.new }.to raise_error ArgumentError
      end
      it 'should raise error if 1 arg passed' do
        expect { UserModel.new(1) }.to raise_error ArgumentError
      end
      it 'should raise error if 2 arg passed' do
        expect { UserModel.new(1, 2) }.to raise_error ArgumentError
      end
      it 'should pass when 3 arg passed' do
        expect { UserModel.new(1, 2, 3) }.to_not raise_error
      end
    end
  end
end
