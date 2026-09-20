# Code structure
## C
C89 only.
## Newlines
Newlines shall be appended after each character within the defined list of characters "{};" or at the character closing the name of what to include at a line that starts with #include. Newlines can be added after the closure of an area of code. Exemptions include:
- Comments (May be added wherever meaning is clearer);
- "for" loop headers.
- "else" after a closing bracket shall not have a newline but instead have a space character.
## Indentation
Indentation starts as 0 by default, and on each line N tabs prefix the following code where N is the indentation level.
Indentation level is incremented by the character '{' and decremented by the character '}'.
Indentation is typed as the 9th ASCII character.
## Spacing
Spacing is added before and after every operator that may arithmetically or logically modify/output a number/variable/memory slot from an input number/variable/memory slot. Unary operators are exempt and should only have spacing before them but not after the operator. Attributions like "foo.x", "foo[x]" or "foo->x" are exempt and must not have spacing.
## Includes
All includes are at the top, right below the license/copyright message.
## Comments
Comments are added where the code doesn't explain what it does. Comments are exempt from all newline/indentation rules and shall be added at a position wherever clearer.
# Specific area rules (specified by a comment with the name of the area where each letter after a space is uppercase)
## License/Copyright
To not be modified.
## Includes
To not be modified with the exception of the code depending on an irreplaceable library.
Must be statically linkable.
Must only use musl libc.
## Constants
Macros defined by #define that may assist in the configuration of this program shall only be added here.
## Signal Handler
To not be modified with the exception of bugs.
## Helper functions
Removal of a function is done only when removing a part depending on that function.
Adding a function is done only when more than 2 areas of code require it.
## Initsys
### Signal Handler Initiation
Shall not be modified unless handling new signals or changing SIGUSR1 to a different signal.
### Startup
To not be modified with the exception of bugs or new features.
### Reaping
To not be modified with the exception of bugs.
### Shutdown
To not be modified with the exception of bugs or new features.
## Main Logic
To not be modified with the exception of bugs or new features.
# Building
At the root of this repository with musl-gcc installed on a Linux-running system with bash:
```bash
./compile.sh
```
# Commit messages
Last commit message's integer value incremented where the first commit message is "1", the second one is "2", and so on. The "git diff" shows the changes, not the commit message.
# Other notes
- Patches can be sent through GitHub.
# License
GPL-3.0-or-later. See [LICENSE](LICENSE).
Copyright (C) 2026 minetomba <minetomba@proton.me>.
If you fork or reuse this, keep this notice and the license intact.
# Security Vulnerabilities
Report at <minetomba@proton.me>, expect a response or patch within 7 days.