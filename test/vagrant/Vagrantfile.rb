$script = <<-SCRIPT
# Workaround for error "The request was aborted: Could not create SSL/TLS secure channel."
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
mkdir $env:TEMP\\kitchen\\srv\\salt\\win\\repo-ng
wget https://github.com/saltstack/salt-winrepo-ng/raw/master/openvpn.sls -OutFile $env:TEMP\\kitchen\\srv\\salt\\win\\repo-ng\\openvpn.sls
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: $script
end
