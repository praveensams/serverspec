require 'spec_helper'



describe package('httpd') do
  it { should be_installed }
end

decribe command('ps aux') do
  its(:stdout) { should match /httpd/ }
end


