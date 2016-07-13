require 'plugin_loader'

describe PluginLoader.new do
  context '#find_plugins' do
    it { is_expected.to respond_to(:find_plugins) }
    it 'should set available plugins' do
      subject.find_plugins
      expect(subject.available_plugins).to_not be_empty
    end
  end
  context '#load_plugin' do
    it { is_expected.to respond_to(:load_plugin).with(1).argument }

    it 'should set correct plugin_file ' do
      subject.available_plugins = ['format_csv.rb']
      subject.load_plugin(0)
      expect(subject.plugin_file).to eql('format_csv.rb')
    end
  end
end