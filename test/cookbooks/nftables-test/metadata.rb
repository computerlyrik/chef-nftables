name             'nftables-test'
maintainer       'Christian Fischer, computerlyrik'
maintainer_email 'chef-cookbooks@computerlyrik.de'
license          'Apache 2.0'
description      'Tests nftables'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'nftables'

supports         'ubuntu', '14.04'
