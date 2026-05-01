param environment string
param location string
param appId string

var namePrefix = '${appId}-${environment}'

module cosmos 'modules/cosmosdb.bicep' = {
  name: 'cosmos'
  params: {
    name: 'cosmos-${namePrefix}'
    location: location
    environment: environment
  }
}
