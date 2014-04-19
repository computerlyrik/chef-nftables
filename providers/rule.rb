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

# UFW syntax
action :allow do
  apply_rule('accept')
end

action :deny do
  apply_rule('drop')
end

# IPTABLES / NFTABLES syntax
action :accept do
  apply_rule('accept')
end
action :drop do
  apply_rule('drop')
end

action :reject do
  apply_rule('reject')
end

private

def apply_rule(type = nil)
  Chef::Log.error('Not yet implemented')
  new_resource.updated_by_last_action(false)
end
