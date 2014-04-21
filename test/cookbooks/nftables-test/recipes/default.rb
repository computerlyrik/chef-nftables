include_recipe 'nftables'

nftables 'nftables'

nftables_rule 'block all' do
  type :filter
  hook :forward
  match [ip:  { saddr: '192.168.88.3', daddr: '4.2.2.4' },
         tcp: { sport: 80 },
         udp: { dport: 5555 }
        ]
  jump :drop
  action :add
end
