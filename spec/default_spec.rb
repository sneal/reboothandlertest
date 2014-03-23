describe 'reboothandlertest::default' do

  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      # TODO set node values here
    end.converge(described_recipe)
  end

  it 'should include environment recipe' do
    expect(chef_run).to include_recipe 'daptiv_environment::_default'
  end

end
