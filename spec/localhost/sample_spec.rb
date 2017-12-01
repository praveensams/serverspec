require 'spec_helper'



describe package('httpd') do
  it { should be_installed }
end

describe command('ps aux') do
  its(:stdout) { should match /httpd/ }
end


