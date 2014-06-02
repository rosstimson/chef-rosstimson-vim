# Encoding: utf-8

require_relative 'spec_helper'

describe 'compiles and installs vim' do
  describe file('/usr/local/bin/vim') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 755 }
  end

  describe command('/usr/local/bin/vim --version') do
    it { should return_exit_status 0 }
    it { should return_stdout(/.*Compiled by Ross Timson <ross@rosstimson.com>.*/m) }
    it { should return_stdout(/.*Huge version without GUI.*/m) }
    it { should return_stdout(/.*\+python.*/m) }
    it { should return_stdout(/.*\+multi_byte.*/m) }
    it { should return_stdout(/.*\+cscope.*/m) }
    it { should return_stdout(/.*\+lua.*/m) }
    it { should return_stdout(/.*\-tcl.*/m) }
    it { should return_stdout(/.*\-netbeans_intg.*/m) }
  end
end

describe 'installs some useful utitilties/tools' do
  describe command('command -v ctags') do
    it { should return_exit_status 0 }
  end

  describe command('command -v par') do
    it { should return_exit_status 0 }
  end
end
