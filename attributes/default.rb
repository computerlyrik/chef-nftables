#
# Cookbook Name:: nftables
# Attributes:: default
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

default['node']['nftables']['nft'] = '/usr/bin/nft'

#from https://home.regit.org/2014/01/why-you-will-love-nftables/
default['node']['nftables']['v6_defaults'] = [ 'nd-neighbor-solicit', 'nd-neighbor-advert', 'nd-router-advert', 
                                               'destination-unreachable', 'packet-too-big', 'param-problem', 
                                               'mld-listener-query', 'mld-listener-report', 'mld-listener-reduction', 
                                               'echo-request', 'echo-reply' ]


