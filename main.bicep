param location string = 'centralus'
param appName string = 'mywebappdemo219'
param storageName string = 'mystoragedemo219'
 
module storageModule './storage.bicep' = {
  name: 'storageDeploy'
  params: {
    storageName: storageName
    location: location
  }
}
 
module appModule './appservice.bicep' = {
  name: 'appDeploy'
  params: {
    appName: appName
    location: location
  }
}
