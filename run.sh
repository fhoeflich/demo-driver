#!/bin/bash
#
# run(1) -- run demo driver to check out, build, deploy and launch everything.
#
# 1. Check out demo-driver repo via git on initiator machine (x86_64) by hand.
# 2. Run run.sh (=> Yocto, qemu builds, ssh builds/installs)
# 3. Demo driver checks out component repo(s):
#	 dedicated machine or qemu VM(s),
#    vanilla kernel,
#    Frank's driver;
# 4. Start x86_64 qemu VM for build (build VM)
# 5. Build kernel on build VM
# 6. Build device driver via dkms on build VM
# 7. Start arm64 qemu VM for target (target VM)
# 8. Install augmented kernel and built-in driver or module on VM, reboot
# 9. Demo device usage on machine/VM
#
PATH=/bin:/usr/bin:/sbin:/usr/sbin

#
# 1. Check out demo-driver repo via git on initiator machine (x86_64)
#
#git clone git@github.com:fhoeflich/demo-driver.git
#cd demo-driver

#
# 2. Run run.sh (=> Yocto, qemu builds, ssh builds/installs)
#
echo 'Step 2: running run.sh ...'
#./run.sh

#
# 3. Demo driver checks out component repo(s):
#	 poky (to make build and target VMs),
#    vanilla kernel,
#    Frank's driver;
#
echo 'Step 3: cloning poky ...'
git clone git://git.yoctoproject.org/poky

exit 0
