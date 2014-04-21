#
# Cookbook Name:: nftables
# Provider:: rule
#
# Copyright 2014, Christian Fischer, computerlyrik
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include Chef::Mixin::ShellOut

nftables_bin = '/usr/bin/nft'
# UFW Syntax
action :add do
  command = nftables_bin + ' add rule ' + options.table + ' ' + options.chain + ' '
  options.match.each do |match, data|
    command += match + ' ' + data
  end
  Chef::Log.info(command)
  new_resource.updated_by_last_action(call_command(command))
end

action :delete do
  apply_rule('drop')
  new_resource.updated_by_last_action(false)
end

action :insert do
  apply_rule('reject')
  new_resource.updated_by_last_action(false)
end

private

def call_command(command = nil)
  erg = shell_out!(command)
  Chef::Log.info(erg)
  Chef::Log.error('Not yet implemented')
end
