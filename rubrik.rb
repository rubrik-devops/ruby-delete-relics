$LOAD_PATH.unshift File.expand_path('../lib/', __FILE__)
require 'parseoptions.rb'
require 'pp'
require 'getCreds.rb'
require 'json'
require 'csv'
require 'uri'
require 'restCall.rb'
require 'getToken.rb'

date = DateTime.now.strftime('%Y-%m-%d.%H-%M-%S')


# BEGIN
Creds = getCreds();
Begintime=Time.now
Logtime=Begintime.to_i

# Global options
Options = ParseOptions.parse(ARGV)
r = Options.r
v = Options.v

if r
  vers=restCall(r ,"/api/v1/cluster/me",'','get', '')['version']
  puts "Rubrik CDM Version #{vers}" 
end

if Options.relics
  listData = restCall(r,"/api/v1/vmware/vm?limit=9999&primary_cluster_id=local",'','get','')["data"]
  listData.each do |vm|
    if vm['isRelic']
      a = []
      vmData = restCall(r,"/api/v1/vmware/vm/#{vm['id']}",'','get','')['snapshots']
      vmData.each do |ss|
        age = ((Date.parse Time.now.to_s) - (Date.parse ss['date'])).to_i
        a.push(age)
      end
      if a.min && a.min >= Options.relics.to_i
        puts "#{vm['name']} (#{vm['id']} is Relic : Newest Snapshot #{a.min} Days ago, DELETING ALL SNAPS"
        restCall(r,"/api/v1/vmware/vm/#{vm['id']}/snapshot",'','delete','')
      end
    end
  end
end


if Options.login 
   require 'getToken.rb'
end
