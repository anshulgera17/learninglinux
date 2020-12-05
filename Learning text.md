
Red Hat Family Systems (including CentOS and Fedora)
SUSE Family Systems (including openSUSE) - using zypper for install, update and remove packages
Debian Family Systems (including Ubuntu and Linux Mint).

The /proc filesystem contains virtual files (files that exist only in memory) that permit viewing constantly changing kernel data. /proc contains files and directories that mimic kernel structures and configuration information. It does not contain real files, but runtime system information, e.g. system memory, devices mounted, hardware configuration, etc. Some important entries in /proc are:


/proc/cpuinfo
/proc/interrupts
/proc/meminfo
/proc/mounts
/proc/partitions
/proc/version
/proc has subdirectories as well, including:

/proc/<Process-ID-#>
/proc/sys

The first example shows there is a directory for every process running on the system, which contains vital information about it. The second example shows a virtual directory that contains a lot of information about the entire system, in particular its hardware and configuration. The /proc filesystem is very useful because the information it reports is gathered only as needed and never needs storage on the disk.


/bin - for normal binary files
/sbin - for adminstrative binary files

The /dev directory contains device nodes, a type of pseudo-file used by most hardware and software devices, except for network devices. 

The /var directory contains files that are expected to change in size and content as the system is running (var stands for variable), such as the entries in the following directories:

System log files: /var/log
Packages and database files: /var/lib
Print queues: /var/spool
Temporary files: /var/tmp.
The /var directory may be put on its own filesystem so that growth of the files can be accommodated and any exploding  file sizes do not fatally affect the system. Network services directories such as /var/ftp (the FTP service) and /var/www (the HTTP web service) are also found under /var.

The /boot directory contains the few essential files needed to boot the system. For every alternative kernel installed on the system there are four files:

vmlinuz - The compressed Linux kernel, required for booting.
initramfs - The initial ram filesystem, required for booting, sometimes called initrd, not initramfs.
config - The kernel configuration file, only used for debugging and bookkeeping.
System.map - Kernel symbol table, only used for debugging.
Each of these files has a kernel version appended to its name.

The Grand Unified Bootloader (GRUB) files such as /boot/grub/grub.conf or /boot/grub2/grub2.cfg are also found under the /boot directory.