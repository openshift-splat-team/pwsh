#!/bin/bash
curl -L -o powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.3.12/powershell-7.3.12-linux-x64.tar.gz

# Create the target folder where powershell will be placed
mkdir -p /opt/microsoft/powershell/7

# Expand powershell to the target folder
tar zxf powershell.tar.gz -C /opt/microsoft/powershell/7

# Set execute permissions
chmod +x /opt/microsoft/powershell/7/pwsh

# Create the symbolic link that points to pwsh
ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh

export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true

# Install VMware plugin for powershell.  Create settings directory /output/.local/share/VMware/PowerCLI
pwsh -Command 'Install-Module VMware.PowerCLI -Force -Scope AllUsers'
pwsh -Command 'Install-Module -Name EPS -RequiredVersion 1.0 -Force -Scope AllUsers' 
