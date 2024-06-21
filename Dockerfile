FROM registry.access.redhat.com/ubi9/ubi:9.4-1123
RUN mkdir -p /usr/app/src
WORKDIR /usr/app/src
RUN curl -L -o powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.3.12/powershell-7.3.12-linux-x64.tar.gz
COPY install-pwsh.sh .
RUN dnf install -y libicu
RUN ./install-pwsh.sh 

# Install VMware plugin for powershell.  Create settings directory /output/.local/share/VMware/PowerCLI
RUN pwsh -Command 'Install-Module VMware.PowerCLI -Force -Scope AllUsers' && \
    pwsh -Command 'Install-Module -Name EPS -RequiredVersion 1.0 -Force -Scope AllUsers' 