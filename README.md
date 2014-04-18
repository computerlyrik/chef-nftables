nftables Cookbook
=================

This cookbook supports installing nftables on your system.

Also this will re-implement firewall-cookbook (and/or firewall-iptables) to support seamless switch to nftables.

Additions will be made on demand.

Requirements
------------
This cookbook works on ubuntu 14.04

e.g.
#### packages
- `apt` - nftables needs apt to add ppa repository

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### nftables::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nftables']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### nftables::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `nftables` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nftables]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
