name: Azure CLI Login Tests
on: 
  push:
      branches:
        - main
jobs:
  build:
    runs-on: self-hosted
    steps:            
    - name: "Login to Azure"
      uses: Azure/login@v1
    - name: "Upload Static Content to Storage"
      uses: azure/CLI@v1
      with:
        azcliversion: 2.24.2
        inlineScript: |
                    az group list
