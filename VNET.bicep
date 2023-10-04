param networkfabric string = 'network-9'
param cidr string = '10.0.0.0/16'
param subnet1name string = 'default'
param subnet1 string = '10.0.0.0/17'

resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: networkfabric
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        cidr 
      ]
    } 
    subnets: [
      {
        name: subnet1name
        properties: {
          addressPrefix: subnet1
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Disabled'
        }
      }
    ]
  }

}
