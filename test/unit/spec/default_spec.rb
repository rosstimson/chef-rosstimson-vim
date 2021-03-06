# Encoding: utf-8

require_relative 'spec_helper'

describe 'rosstimson-vim::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes build-essential::default recipe' do
    expect(chef_run).to include_recipe('build-essential')
  end

  it 'includes python::default recipe' do
    expect(chef_run).to include_recipe('build-essential')
  end

  it 'includes mercurial::default recipe' do
    expect(chef_run).to include_recipe('mercurial')
  end

  it 'installs par package' do
    expect(chef_run).to install_package('par')
  end

  it 'installs the_silver_searcher package' do
    expect(chef_run).to install_package('the_silver_searcher')
  end
end
