include_recipe 'nftables'

nftables 'nftables'

nftables_rule 'block all' do
  port 80
  action :drop
end
