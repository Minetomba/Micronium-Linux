# Micronium-Linux
Micronium Linux is a minimalist distribution designed to be as small and efficient as possible.
## Installation
Compile the binary, move the binary into /sbin, and tell the kernel for it to be PID 1.
To shutdown the system, send SIGUSR1 to PID 1 via syscall(SYS_kill, 1, 10), making sure only the root user can send that signal and be succesful in doing so.
To configure the system, make a file named "/etc/initconf.txt" owned by root editable only by root, and type line by line the paths to the binaries to execute. For example, this is a very small yet functional initconf that spawns iwd, sshd, and a shell all as root:
```conf
/bin/iwd
/sbin/sshd
/bin/sh
```
By default, you should only use /bin and /sbin for binaries.
All binaries in initconf.txt get launched as root, which is good because it forces user processes to never be launched under the init process, and instead be launched under something like a login manager or shell.
## Runtime dependencies
- POSIX-compliant Linux.
## Compile-time dependencies
- musl-gcc, bash/ash, and Linux.
## Features
Micronium-Linux is not an init system, it is more than that, as it contains most actually used binaries busybox would contain (without all the macro bloat busybox includes), hence why it is so small yet combining everything from an init system to gnu utils in one single 500-line C file.
# Contributing
### Code structure
#### Newlines
Newlines shall be appended after each character within the defined list of characters "{};" or at the character closing the name of what to include at a line that starts with #include. Newlines can be added after the closure of an area of code. Exemptions include:
- Comments (May be added wherever meaning is clearer);
- "for" loop headers.
- "else" after a closing bracket shall not have a newline but instead have a space character.
#### Indentation
Indentation starts as 0 by default, and on each line N tabs prefix the following code where N is the indentation level.
Indentation level is incremented by the character '{' and decremented by the character '}'.
Indentation is only done with tabs.
#### Spacing
Spacing is added before and after every operator that may arithmetically or logically modify/output a number/variable/memory slot from an input number/variable/memory slot. Unary operators are exempt and should only have spacing before them but not after the operator. Attributions like "foo.x", "foo[x]" or "foo->x" are exempt and must not have spacing.
#### Includes
All includes are at the top, right below the license/copyright message.
#### Comments
Comments are added where the code doesn't explain what it does. Comments are exempt from all newline/indentation rules and shall be added at a position wherever clearer.
Comments are used at the beggining of a code block to name that area.
### Building
At the root of this repository:
```bash
musl-gcc -Wall -Wextra -Werror -pedantic -static src/main.c -o micronium-linux
strip micronium-linux
```
### Commit messages
Last commit message's integer value incremented where the first commit message is "1", the second one is "2", and so on. The changes themselves via "git diff" are the "What changed?" part of a commit rather than the commit message.
### Other notes
- Patches can be sent through GitHub as a pull request.
### Security Vulnerabilities
Report at <minetomba@proton.me>, expect a response or patch within 7 days.
Options for reporting:
- Report with no other data other than the vulnerability, but you will get no credit.
- Report with something like your github username and/or an email you reply through, and you will receive credit.
Information needed for submission:
- If the vulnerability was identified through dynamic analysis, a PoC and the type of the vulnerability will need to be submitted.
- If the vulnerability was identified through static analysis, the specific affected lines and/or the area of code affected and the type of vulnerability will need to be submitted.
## License
GPL-3.0-only. See [LICENSE](LICENSE).
Copyright (C) 2026 minetomba <minetomba@proton.me>.
If you fork or reuse this, keep this notice and the license intact.