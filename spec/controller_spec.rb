require 'controller'

describe Controller do
  describe '#start' do
    let(:obj) { Controller.new }
    it 'calls PluginLoader#find_plugins ' do
      expect_any_instance_of(PluginLoader).to \
        receive(:find_plugins).and_return(['format_csv.rb'])
      expect(UserView).to receive(:list_plugins).with(['format_csv.rb'])
      expect(UserView).to receive(:read_in_choice).and_return(1)
      expect_any_instance_of(PluginLoader).to \
        receive(:load_plugin).with(0)
      expect(obj).to receive(:capture_user_input)
      expect(obj).to receive(:write_format)
      obj.start
    end
  end
  describe '#capture_user_input' do
    subject(:object) { Controller.new }
    before(:example) do
      allow(UserView).to receive(:read_in_data).and_return(['name', 'city', 'age', 'file'])
      object.capture_user_input
    end
    context 'capturing input from user' do
      it 'sets file_name' do
        expect(object.file_name).to eql('file')
      end
      it 'sets data_object' do
        expect(object.data_object).to be_an_instance_of(UserModel)
      end
    end
  end
  describe '#convert_to_class_name' do
    subject(:object) { Controller.new }
    context 'converting name' do
      it 'responds to 1 argument' do
        expect(object).to respond_to(:convert_to_class_name).with(1)
      end
    end
  end
end
