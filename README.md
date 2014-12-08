android_device_semc_es209ra
SE Xperia X10

How to build:
Initialize repo:

	 repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Synchronize now your repository:

repo sync
Once done you'll need ES209ra specific files

Create a .repo/local_manifests/local_manifest.xml file and get these lines inside :


		<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
    	<!-- Remove CM repository -->
    	<remove-project name="CyanogenMod/android_hardware_qcom_gps" />

		<!-- Device -->
    	<remote name="tof37github"
            	fetch="https://github.com"/>

    	<project path="hardware/qcom/display-legacy" name="TOF37/android_hardware_qcom_display-legacy" revision="Kitkat-pmem" remote="tof37github"/>
	<project path="hardware/atheros/wifi/libs" name="x10f/android_hardware_atheros_wifi_libs" revision="cm-12" />
    	<project name="TOF37/android_device_semc_es209ra" path="device/semc/es209ra" revision="CM11" />
    	<project name="TOF37/proprietary_es209ra" path="vendor/semc/es209ra" revision="EV-kitkat" remote="tof37github"/>
    	<project name="TOF37/Kernel-ES209RA-3.0.8" path="kernel/semc/es209ra" revision="Kernel-3.0.8-Pmem-version" remote="tof37github"/>
	</manifest>

Re-synchronize now your repository (it will download ES209RA latest sources):

repo sync

Download necessary prebuilts :

vendor/cm/get-prebuilts

Compile:
. build/envsetup.sh && lunch cm_es209ra-userdebug

make bacon -j8	

Credits:
Konstat repo (Zte Blade) for all the great work they've done and we took part of it to improve our device https://github.com/KonstaT
Cyanogen Mod for the Base
FXP for the initial device repository
