require 'spec_helper'

describe package( 'apache2' ) do
  it { should be_installed }
end

describe service( 'apache2' ) do
  it { should be_enabled }
  it { should be_running }
end

describe command( 'apache2ctl -M' ) do
    its( :exit_status ) { should eq 0 }
    its( :stdout ) { should match /rewrite_module/ }
end

describe port( 8080 ) do
  it { should be_listening }
end
