FROM registry.access.redhat.com/ubi9/ubi:9.4-1123 as dependencies
WORKDIR /go/src/github.com/openshift/installer
COPY *.sh .
RUN ./install-microsoft-deps.sh 

# FROM registry.ci.openshift.org/ocp/builder:rhel-9-golang-1.22-openshift-4.17 AS builder
# WORKDIR /go/src/github.com/openshift/installer

# # copy powershell and powerCLI dependencies
# COPY --from=dependencies /opt/microsoft/powershell /opt/microsoft/powershell
# COPY --from=dependencies /root/.local/share/powershell/Modules /root/.local/share/powershell/Modules
# COPY --from=dependencies /usr/local/share/powershell/Modules /usr/local/share/powershell/Modules
# RUN ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh

# # copy azure-cli venv
# COPY --from=dependencies /go/src/github.com/openshift/installer/env /go/src/github.com/openshift/installer/env
# ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=true


