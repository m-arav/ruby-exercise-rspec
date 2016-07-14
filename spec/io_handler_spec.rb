require 'io_handler'
describe IoHandler do
  describe '.input_handler' do
    context 'accepting input from stdin' do
      it 'returns a string value' do
        expect_any_instance_of(Kernel).to receive(:gets).and_return('test')
        IoHandler.input_handler
        expect(IoHandler.input).to eql('test')
      end
    end
  end
end
