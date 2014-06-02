# Encoding: utf-8

require_relative 'spec_helper'

# We don't need to re-test all everything that the default suite already does
# but we should make sure that the GUI has been built.
describe command('/usr/local/bin/vim --version') do
  it { should return_stdout(/.*Huge version with GTK2 GUI.*/m) }
end
