require 'spec_helper'

describe package( 'mysql-server' ) do
  it { should be_installed }
end

describe service( 'mysql' ) do
  it { should be_enabled }
  it { should be_running }
end

describe file( '/root/.my.cnf' ) do
  its( :content ) { should match /^password = [a-zA-Z0-9]{12}$/ }
end
