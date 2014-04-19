require 'minitest/spec'
#
## Cookbook Name:: nftables
## Spec:: default

describe_recipe 'nftables::default' do
  it 'ensures nftables is installed' do
    package('nftables').must_be_installed
  end
end
