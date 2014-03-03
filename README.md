android_device_semc_es209ra
===========================

SE Xperia X10

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/Evervolv/android.git -b kitkat


Synchronize now your repository:

    repo sync

Once done you'll need ES209ra specific fieles

Create a .repo/local_manifests/local_manifest.xml file and get these lines inside :

		<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
    	<!-- Device -->
    	<remote name="tof37github"
            	fetch="https://github.com"/>

    	<project path="hardware/qcom/display-legacy" name="TOF37/android_hardware_qcom_display-legacy" revision="kitkat" remote="tof37github"/>
    	<project name="TOF37/android_device_semc_es209ra" path="device/semc/es209ra" revision="EV4.4" remote="tof37github"/>
    	<project name="TOF37/proprietary_es209ra" path="vendor/semc/es209ra" revision="EV-kitkat" remote="tof37github"/>
    	<project name="TOF37/Kernel-ES209RA-3.0.8" path="kernel/semc/es209ra" revision="master" remote="tof37github"/>
	</manifest>

Re-synchronize now your repository (it will download ES209RA latest sources):

    repo sync

Compile:

    . build/envsetup.sh && lunch ev_es209ra-userdebug
    make -j8
    make otapackage

Credits:

* Konstat repo (Zte Blade) for all the great work they've done and we took part of it to improve our device https://github.com/KonstaT
* Evervolv for the Base "https://github.com/Evervolv"
* FXP for the initial device repository
