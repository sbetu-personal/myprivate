param resourceGroupLocation string = 'eastus'

module webapp './webapp.bicep' = {
  name: 'webappModule'
  params: {
    webAppName: 'myWebappas345678'
  }
}

module database './database.bicep' = {
  name: 'databaseModule'
  params: {
    serverName: 'myDatabase34587654'
    sqlDBName: 'mySqlDB4567876'
    administratorLogin: 'myAdmin'
    administratorLoginPassword: 'myPassword12323456789!'
  }

}

module network './network.bicep' = {
  name: 'networkModule'
  params: {
    virtualNetworkName: 'myVnet'
    subnetName: 'mySubnet'
    resourceGroupLocation: resourceGroupLocation
  }
}
