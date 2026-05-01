param environment string
param location string
param appId string

var namePrefix = '${appId}-${environment}'

module cosmos 'modules/cosmosdb.bicep' = {
  name: 'cosmos'
  params: {
    accountName: 'cosmos-${namePrefix}'
    location: location
  }
}
