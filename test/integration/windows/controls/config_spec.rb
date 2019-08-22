control 'OpenVPN client configuration' do
  title 'should match desired lines'

  cfgfile = 'C:\Program Files\OpenVPN\config\myclient1.ovpn'

  describe file(cfgfile) do
    it { should be_file }
    its('content') { should include '# OpenVPN client configuration' }
    its('content') { should include '# Managed by Salt' }
  end
end
