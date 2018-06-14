#ruby-delete-relics
===============


# Overview:
* Rubrik Framework for removing snapshots from Relic VMs (Unmanaged) after --relic days.

# How to use:
Usage below will result in a formatted message being emailed to --to from --from with a Rubrik Daily Report.

```
.creds - JSON formatted configuration (or resort to including credentials in command line execution)

        {
        	"friendlyname": {
                	"servers":["ip","ip",...],
                	"username": "[username]",
                	"password": "[password]"
        	}
        }

Usage: rubrik.rb [options]

Specific options:
    -l, --login                      Test login to API

Common options:
    -r, --rubrik Address             Rubrik name in .creds
        --relic INT                  Number of days since last snapshot
    -h, --help                       Show thi
```
## Example Execution
```
> ruby rubrik.rb -r devops-rubrik --relic 30
Rubrik CDM Version 4.1.1-p2-2263
SE-FGUG-CENT(temporär) (VirtualMachine:::884de08c-3e1c-4824-8a15-413b4e85266c-vm-172132 is Relic : Newest Snapshot 218 Days ago, DELETING ALL SNAPS
poc-mass-centos7-266 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-357 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-win2016-022 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-413 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-centos7-021 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-112 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-centos7-300 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-391 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-centos7-268 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-359 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-centos7-191 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-282 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
win013 (VirtualMachine:::fbcb1f51-9520-4227-a68c-6fe145982f48-vm-13444 is Relic : Newest Snapshot 161 Days ago, DELETING ALL SNAPS
poc-mass-win2016-102 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-493 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
devops1006 (VirtualMachine:::fbcb1f51-9520-4227-a68c-6fe145982f48-vm-9424 is Relic : Newest Snapshot 116 Days ago, DELETING ALL SNAPS
poc-mass-centos7-199 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-290 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
devops-dc01 05-23 20:34 1 (VirtualMachine:::fbcb1f51-9520-4227-a68c-6fe145982f48-vm-23551 is Relic : Newest Snapshot 267 Days ago, DELETING ALL SNAPS
poc-mass-win2016-227 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-618 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
poc-mass-centos7-256 (VirtualMachine:::5b59e4e1-acb7-4072-9967-b0dbd6c5fbfb-vm-347 is Relic : Newest Snapshot 266 Days ago, DELETING ALL SNAPS
```




