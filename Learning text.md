# Linux Learning

- Red Hat Family Systems (including CentOS and Fedora)
- SUSE Family Systems (including openSUSE) - using zypper for install, update and remove packages
- Debian Family Systems (including Ubuntu and Linux Mint).

- The /proc filesystem contains virtual files (files that exist only in memory) that permit viewing constantly changing kernel data. /proc contains files and directories that mimic kernel structures and configuration information. It does not contain real files, but runtime system information, e.g. system memory, devices mounted, hardware configuration, etc. Some important entries in /proc are:

```{.sh}
/proc/cpuinfo
/proc/interrupts
/proc/meminfo
/proc/mounts
/proc/partitions
/proc/version
/proc has subdirectories as well, including:
/proc/<Process-ID-#>
/proc/sys
```

- The first example shows there is a directory for every process running on the system, which contains vital information about it. The second example shows a virtual directory that contains a lot of information about the entire system, in particular its hardware and configuration. The /proc filesystem is very useful because the information it reports is gathered only as needed and never needs storage on the disk.

- /bin - for normal binary files
- /sbin - for adminstrative binary files

- The /dev directory contains device nodes, a type of pseudo-file used by most hardware and software devices, except for network devices. 

- The /var directory contains files that are expected to change in size and content as the system is running (var stands for variable), such as the entries in the following directories:

- System log files: /var/log
- Packages and database files: /var/lib
- Print queues: /var/spool
- Temporary files: /var/tmp.
- The /var directory may be put on its own filesystem so that growth of the files can be accommodated and any exploding  file sizes do not fatally affect the system. - Network services directories such as /var/ftp (the FTP service) and /var/www (the HTTP web service) are also found under /var.

- The /boot directory contains the few essential files needed to boot the system. For every alternative kernel installed on the system there are four files:

- vmlinuz - The compressed Linux kernel, required for booting.
- initramfs - The initial ram filesystem, required for booting, sometimes called initrd, not initramfs.
- config - The kernel configuration file, only used for debugging and bookkeeping.
- System.map - Kernel symbol table, only used for debugging.
- Each of these files has a kernel version appended to its name.

- The Grand Unified Bootloader (GRUB) files such as /boot/grub/grub.conf or /boot/grub2/grub2.cfg are also found under the /boot directory.

- PID - process id
- PPID - parent process id
- TID - thread id
- UID - User Id
- GID - Group Id 
- EUID(Effective ID) - determine the access right of the user
- EGID - determine the access right of the group
- RUID - identified the user who start the process
- RGID(Real Group ID) - identified the group that start the process

- nice value of each process decide the priority, -20 (high priority), + 19 (low priority)
- renice +5 pid

- w, top, uptime - shows load average (0.45 0.17 0.12) 0.45 - for last min, 0.17 - for last 5 min, 0.12 - for last 15 min
- third line of top command: The percentage of user jobs running at a lower priority (niceness - ni) is then listed. Idle mode (id) should be low if the load average is high, and vice versa. The percentage of jobs waiting (wa) for I/O is listed. Interrupts include the percentage of hardware (hi) vs. software interrupts (si). Steal time (st) is generally used with virtual machines, which has some of its idle CPU time taken for other uses.

## top command columns details:

- Process Identification Number (PID)
- Process owner (USER)
- Priority (PR) and nice values (NI)
- Virtual (VIRT), physical (RES), and shared memory (SHR)
- Status (S)
- Percentage of CPU (%CPU) and memory (%MEM) used
- Execution time (TIME+)
- Command (COMMAND).

## top command for interactive session

- `t` Display or hide summary information (rows 2 and 3)
- `m` Display or hide memory information (rows 4 and 5)
- `A` Sort the process list by top resource consumers
- `r` Renice (change the priority of) a specific processes
- `k` Kill a specific process
- `f` Enter the top configuration screen
- `o` Interactively select a new sort order in the process list

## Vi editor command mode

```{.sh}
Key Usage
a Append text after cursor; stop upon Escape key
A Append text at end of current line; stop upon Escape key
i Insert text before cursor; stop upon Escape key
I Insert text at beginning of current line; stop upon Escape key
o Start a new line below current line, insert text there; stop upon Escape key
O Start a new line above current line, insert text there; stop upon Escape key
r Replace character at current position
R Replace text starting with current position; stop upon Escape key
x Delete character at current position
Nx Delete N characters, starting at current position
dw Delete the word at the current position
D Delete the rest of the current line
dd Delete the current line
Ndd or dNd Delete N lines
u Undo the previous operation
yy Yank (copy) the current line and put it in buffer
Nyy or yNy Yank (copy) N lines and put it in buffer
p Paste at the current position the yanked line or lines from the buffer.
```

## basic syntax and special charecterstic od scripting

```{.sh}
# Used to add a comment, except when used as \#, or as #! when starting a script
\ Used at the end of a line to indicate continuation on to the next line
; Used to interpret what follows as a new command to be executed next
$ Indicates what follows is an environment variable
> Redirect output
>> Append output
< Redirect input
| Used to pipe the result into the next command
```

## check inside if condition

```{.sh}
-e file Checks if the file exists.
-d file Checks if the file is a directory.
-f file Checks if the file is a regular file (i.e. not a symbolic link, device node, directory, etc.)
-s file Checks if the file is of non-zero size.
-g file Checks if the file has sgid set.
-u file Checks if the file has suid set.
-r file Checks if the file is readable.
-w file Checks if the file is writable.
-x file Checks if the file is executable.
```

- `if [[ -x /etc/passwd ]] ; then
  ACTION
  fi` double bracket ignore the quotes insode if

- Common UNIX Printing System (CUPS)
