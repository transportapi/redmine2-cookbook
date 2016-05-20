require 'spec_helper'

describe process('postgres') do
  it { should be_running }
end

describe command('PGPASSWORD=redmine psql -h 127.0.0.1 -U redmine -l >/dev/null') do
  its(:exit_status) { should eq 0 }
end
