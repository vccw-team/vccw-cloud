require 'spec_helper'

packages = %w{
  php
  libapache2-mod-php
  php-cli
  php-dev
  php-mbstring
  php-mcrypt
  php-mysql
  php-gd
  php-curl
  php-zip
}

packages.each do | package |
  describe package( package ) do
    it { should be_installed }
  end
end

describe command( "which composer" ) do
  let( :disable_sudo ) { true }
  its( :exit_status ) { should eq 0 }
end

describe command( 'ls ~/.bash.d/composer.sh' ) do
  let( :disable_sudo ) { true }
  its( :exit_status ) { should eq 0 }
end
