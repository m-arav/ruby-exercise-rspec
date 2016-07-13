require 'controller'

describe Controller do
  describe '#start' do
    let(:obj) { Controller.new }
    it 'should call PluginLoader#find_plugins ' do
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
    context 'capturing input from user' do
      it 'should set file_name and data_object' do
        expect(UserView).to receive(:read_in_data).and_return(['name', 'city', 'age', 'file'])
        object.capture_user_input
        expect(object.file_name).to eql('file')
        expect(object.data_object).to be_an_instance_of(UserModel)
      end
    end
  end
  describe '#convert_to_class_name' do
    subject(:object) { Controller.new }
    context 'converting name' do
      it 'should respond with 1 argument' do
        expect(object).to respond_to(:convert_to_class_name).with(1)
      end
    end
  end
end
