# Creating a Resource Group
New-AzureRmResourceGroup -Name TestRG -Location "Brazil South"

# Creating a VNet named TestVNet
$testVNet = New-AzureRmVirtualNetwork -ResourceGroupName TestRG -Name TestVNet `
-AddressPrefix 192.168.0.0/16 -Location "Brazil South"

# Adding the FrontEnd subnet
Add-AzureRmVirtualNetworkSubnetConfig -Name FrontEnd `
-VirtualNetwork $testVNet -AddressPrefix 192.168.1.0/24

# Adding the BackEnd subnet
Add-AzureRmVirtualNetworkSubnetConfig -Name BackEnd `
-VirtualNetwork $testVNet -AddressPrefix 192.168.2.0/24

# Saving changes to Azure
Set-AzureRmVirtualNetwork -VirtualNetwork $testVNet