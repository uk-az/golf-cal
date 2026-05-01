param name string
param location string
param environment string

resource cosmos 'Microsoft.DocumentDB/databaseAccounts@2023-11-15' = {
  name: name
  location: location
  kind: 'GlobalDocumentDB'
  properties: {
    databaseAccountOfferType: 'Standard'
    enableFreeTier: environment == 'dev'
    consistencyPolicy: {
      defaultConsistencyLevel: 'Session'
    }
    locations: [
      {
        locationName: location
        failoverPriority: 0
      }
    ]
  }
}
