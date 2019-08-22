control 'OpenVPN service' do
  impact 0.5
  title 'should be running and enabled'

  require 'rspec/retry'

  describe service("OpenVPNService") do
    it { should be_enabled }
    it { should be_running }
  end

  logfile = 'C:\ProgramData\OpenVPN\log\myclient1.log'

  describe file(logfile) do
    it { should be_file }
  end

  describe 'Initialization' do
    it 'should be completed', retry: 60, retry_wait: 1 do
      expect(file(logfile).content).to include 'Initialization Sequence Completed'
    end
  end
end
