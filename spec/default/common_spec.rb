require 'spec_helper'

commands = %w{
  curl
  gettext
  git
  jq
  msgfmt
  msgmerge
  svn
  convert
}

commands.each do | command |
  describe command( "which " + Shellwords.shellescape( command ) ) do
    let( :disable_sudo ) { true }
    its( :exit_status ) { should eq 0 }
  end
end

describe command( 'ls ~/.bash.d' ) do
  let( :disable_sudo ) { true }
  its( :exit_status ) { should eq 0 }
end
