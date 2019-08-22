control 'OpenVPN packages' do
  title 'should be installed'

  describe package('OpenVPN') do
    it { should be_installed }
  end

  describe package('TAP-Windows') do
    it { should be_installed }
  end
end
