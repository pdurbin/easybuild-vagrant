# EasyBuild demo using Vagrant

http://hpcugent.github.com/easybuild/

    [pdurbin@beamish easybuild-vagrant]$ vagrant up
    [default] Importing base box 'centos'...
    [default] The guest additions on this VM do not match the install version of
    VirtualBox! This may cause things such as forwarded ports, shared
    folders, and more to not work properly. If any of those things fail on
    this machine, please update the guest additions and repackage the
    box.

    Guest Additions Version: 4.1.18
    VirtualBox Version: 4.2.2
    [default] Matching MAC address for NAT networking...
    [default] Clearing any previously set forwarded ports...
    [default] Forwarding ports...
    [default] -- 22 => 2222 (adapter 1)
    [default] Creating shared folders metadata...
    [default] Clearing any previously set network interfaces...
    [default] Booting VM...
    [default] Waiting for VM to boot. This can take a few minutes.
    [default] VM booted and ready for use!
    [default] Mounting shared folders...
    [default] -- v-root: /vagrant
    [default] -- easyconfigs: /easyconfigs
    [default] -- manifests: /tmp/vagrant-puppet/manifests
    [default] Running provisioner: Vagrant::Provisioners::Puppet...
    [default] Running Puppet with /tmp/vagrant-puppet/manifests/init.pp...
    notice: /Stage[packages]/Packages/Package[environment-modules]/ensure: created

    notice: /Stage[packages]/Packages/Package[python-setuptools]/ensure: created
    notice: Finished catalog run in 30.53 seconds

    [pdurbin@beamish easybuild-vagrant]$ vagrant ssh
    Last login: Tue Jul 10 22:56:01 2012 from 10.0.2.2
    [vagrant@logus ~]$ 
    [vagrant@logus ~]$ sudo su -
    [root@logus ~]# easy_install easybuild
    Searching for easybuild
    Reading http://pypi.python.org/simple/easybuild/
    Reading http://hpcugent.github.com/easybuild
    Best match: easybuild 1.0.1
    Downloading http://pypi.python.org/packages/source/e/easybuild/easybuild-1.0.1.tar.gz#md5=186024cd14898d22f5d40cc0af0acecd
    Processing easybuild-1.0.1.tar.gz
    Running easybuild-1.0.1/setup.py -q bdist_egg --dist-dir /tmp/easy_install-hC9P2f/easybuild-1.0.1/egg-dist-tmp-lKpyWO
    Installing with setuptools.setup...
    Installing version 1.0.1
    warning: install_lib: 'build/lib' does not exist -- no Python modules to install
    zip_safe flag not set; analyzing archive contents...
    Adding easybuild 1.0.1 to easy-install.pth file

    Installed /usr/lib/python2.6/site-packages/easybuild-1.0.1-py2.6.egg
    Processing dependencies for easybuild
    Searching for easybuild-framework==1.0.1
    Reading http://pypi.python.org/simple/easybuild-framework/
    Best match: easybuild-framework 1.0.1
    Downloading http://pypi.python.org/packages/source/e/easybuild-framework/easybuild-framework-1.0.1.tar.gz#md5=91fed7e25ae716b59e10f73089a2ad47
    Processing easybuild-framework-1.0.1.tar.gz
    Running easybuild-framework-1.0.1/setup.py -q bdist_egg --dist-dir /tmp/easy_install-NZp2VO/easybuild-framework-1.0.1/egg-dist-tmp-VNiM7M
    Installing with setuptools.setup...
    Installing version 1.0.1 (API version 1)
    zip_safe flag not set; analyzing archive contents...
    easybuild.main: module references __path__
    easybuild.__init__: module references __path__
    easybuild.toolchains.__init__: module references __path__
    easybuild.toolchains.mpi.__init__: module references __path__
    easybuild.toolchains.compiler.__init__: module references __path__
    easybuild.toolchains.linalg.__init__: module references __path__
    easybuild.toolchains.fft.__init__: module references __path__
    easybuild.tools.version: module references __file__
    easybuild.tools.toolchain.utilities: module references __file__
    vsc.fancylogger: module MAY be using inspect.stack
    vsc.__init__: module references __path__
    Adding easybuild-framework 1.0.1 to easy-install.pth file
    Installing eb script to /usr/bin

    Installed /usr/lib/python2.6/site-packages/easybuild_framework-1.0.1-py2.6.egg
    Searching for easybuild-easyblocks==1.0.1
    Reading http://pypi.python.org/simple/easybuild-easyblocks/
    Best match: easybuild-easyblocks 1.0.1
    Downloading http://pypi.python.org/packages/source/e/easybuild-easyblocks/easybuild-easyblocks-1.0.1.tar.gz#md5=c3e5c835546cbabdcef4df68f56b428b
    Processing easybuild-easyblocks-1.0.1.tar.gz
    Running easybuild-easyblocks-1.0.1/setup.py -q bdist_egg --dist-dir /tmp/easy_install-nYyqiz/easybuild-easyblocks-1.0.1/egg-dist-tmp-W1_bI6
    Installing with setuptools.setup...
    Installing version 1.0.1 (required versions: API >= 1)
    zip_safe flag not set; analyzing archive contents...
    easybuild.__init__: module references __path__
    easybuild.easyblocks.__init__: module references __file__
    easybuild.easyblocks.__init__: module references __path__
    Adding easybuild-easyblocks 1.0.1 to easy-install.pth file

    Installed /usr/lib/python2.6/site-packages/easybuild_easyblocks-1.0.1-py2.6.egg
    Searching for easybuild-easyconfigs==1.0.0.1
    Reading http://pypi.python.org/simple/easybuild-easyconfigs/
    Best match: easybuild-easyconfigs 1.0.0.1
    Downloading http://pypi.python.org/packages/source/e/easybuild-easyconfigs/easybuild-easyconfigs-1.0.0.1.tar.gz#md5=2d633fa4c125722d022bfae1d323b60f
    Processing easybuild-easyconfigs-1.0.0.1.tar.gz
    Running easybuild-easyconfigs-1.0.0.1/setup.py -q bdist_egg --dist-dir /tmp/easy_install-9lF54_/easybuild-easyconfigs-1.0.0.1/egg-dist-tmp-T5wgi0
    Installing with setuptools.setup...
    Installing version 1.0.0.1 (required versions: API >= 1, easyblocks >= 1.0)
    warning: install_lib: 'build/lib' does not exist -- no Python modules to install
    Adding easybuild-easyconfigs 1.0.0.1 to easy-install.pth file

    Installed /usr/lib/python2.6/site-packages/easybuild_easyconfigs-1.0.0.1-py2.6.egg
    Finished processing dependencies for easybuild
    [root@logus ~]#  
    [root@logus ~]# 
    [root@logus ~]# su - vagrant
    [vagrant@logus ~]$ eb /easyconfigs/gzip.eb 
    == resolving dependencies ...
    == processing EasyBuild easyconfig /easyconfigs/gzip.eb
    == fetching files...
    == getting ready, creating build dir, resetting environment...
    == unpacking...
    == patching...
    == preparing...
    == configuring...
    == building...
    == testing...
    == installing...
    == taking care of extensions...
    == packaging...
    == postprocessing...
    == sanity checking...
    == cleaning up...
    == creating module...
    == COMPLETED: Installation ended successfully
    == Results of the build can be found in the log file /home/vagrant/.local/easybuild/software/gzip/1.4/easybuild/easybuild-gzip-1.4-20121204.162541.log
    == Build succeeded for 1 out of 1
    [vagrant@logus ~]$ 
    [vagrant@logus ~]$ export MODULEPATH=$MODULEPATH:$HOME/.local/easybuild/modules
    [vagrant@logus ~]$ 
    [vagrant@logus ~]$ module avail

    ------------------------ /usr/share/Modules/modulefiles ------------------------
    dot         module-cvs  module-info modules     null        use.own

    -------------------- /home/vagrant/.local/easybuild/modules --------------------
    all/gzip/1.4  base/gzip/1.4
    [vagrant@logus ~]$ 
