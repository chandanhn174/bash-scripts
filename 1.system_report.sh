: <<'COMMENT'

Script-1: Build a small shell script that gathers information about the machine using
variables and command substitution, then writes a report to a file.

Build a small shell script that gathers information about the machine using variables and command substitution, then writes a report to a file.

The script
Create /root/scripts/report.sh as an executable shell script that captures the following values into variables using command substitution:

The machine's hostname
The current date in YYYY-MM-DD format
The kernel name (Linux, on this machine)
Then write a report to /root/answers/system-report.txt containing at least these lines:

A first line starting with System report for , followed by the hostname value.
A line containing the date in YYYY-MM-DD format.
A line containing the kernel name.
You can add more lines if you want (uptime, user, etc.) but the three above are what the checks look for.

COMMENT

#------------------------------------------------------------------------------

#!/bin/bash
my_mc="$(hostname)"
t_date="$(date +%Y-%m-%d)"
k_name="$(uname)"
{
echo "System report for $my_mc"
echo "Today's date is $t_date"
echo "$k_name"
}>/root/answers/system-report.txt