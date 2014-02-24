android_device_semc_es209ra
===========================

SE Xperia X10

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/Evervolv/android.git -b kitkat


Synchronize now your repository:

    repo sync

Compile:

    . build/envsetup.sh && lunch ev_es209ra-userdebug
    make -j8
    make otapackage

Credits:

* Konstat repo (Zte Blade) for all the great work they've done and we took part of it to improve our device https://github.com/KonstaT
* Evervolv for the Base "https://github.com/Evervolv"
* FXP for the initial device repository
