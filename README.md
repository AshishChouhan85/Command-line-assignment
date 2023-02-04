# Command-line-assignment

1. Write a bash script to get the current date, time, username, home directory and
current working directory.

```
#!/bin/bash


 # Prints current date in dd/mm/yy format
 echo "Current Date: $(date +"%d-%m-%y")"


 # Prints current time in 12hrs format
 echo "Current Time: $(date +"%r")"


 # Prints the name of current username
 echo "Current Username: $USER"


 # Prints the path of current home directory
 echo "Current home directory: $HOME"


 # Prints the current working directory
 echo "Current Current working directory: $(pwd)"
```

Output:

```
Current Date: 04-02-23
Current Time: 01:03:22 PM
Current Username: ashishchouhan
Current home directory: /Users/ashishchouhan
Current Current working directory: /Users/ashishchouhan/Practice/SHELL_SCRIPTING/Command-line-assignment
```

