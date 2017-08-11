require 'spec_helper'

packages = %w{
  php7.0
  libapache2-mod-php7.0
  php7.0-cli
  php7.0-dev
  php7.0-mbstring
  php7.0-mcrypt
  php7.0-mysql
  php7.0-gd
  php7.0-curl
  php7.0-zip
  php-imagick
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
