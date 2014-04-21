#
# Author:: Christian Fischer (<chef-cookbooks@computerlyrik.de>), Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: nftables
# Resource:: rule
#
# Copyright 2014, Christian Fischer, computerlyrik
# Copyright 2011, Opscode, Inc.
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

IP_CIDR_VALID_REGEX = /\b(?:\d{1,3}\.){3}\d{1,3}\b(\/[0-3]?[0-9])?/

actions :add, :delete
default_action :add

attribute :table, kind_of: String, default: 'filter'
attribute :chain, kind_of: String, required: true
attribute :matches, kind_of: Array, required: true
attribute :jump, kind_of: Symbol, equal_to: [:accept, :reject, :drop, :snat, :dnat, :log, :counter, :return]

attribute :logging, kind_of: Symbol, equal_to: [:connections, :packets]
