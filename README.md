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

2. Write a bash script (name Table.sh) to print the Table of a number by using a while
loop. It should support the following requirements.
• The script should accept the input from the command line.
• If you don't input any data, then display an error message to execute the script correctly.

```
#!/bin/bash
# GETTING USER INPUT
read -p "Enter a number to display its table " num
# CHECKING THAT THE NUMBER IS VALID OR NOT
if ! [[ $num =~ ^[0-9]+ ]]
then
   echo "Enter a valid number"
exit 1 fi
# VARIABLE TO BE MULTIPLIED BY USER INPUT
multiplier=1
# LOOP TO PRINT THE TABLE
while [[ $multiplier -lt 11 ]]
do
   ((multiplier++))
done
```
Output:

Case 1: When a valid input is given
```
Enter a number to display its table 5
5 X 1 = 5
5 X 2 = 10
5 X 3 = 15
5 X 4 = 20
5 X 5 = 25
5 X 6 = 30
5 X 7 = 35
5 X 8 = 40
5 X 9 = 45
5 X 10 = 50
```

Case 2: When empty input is given
```
Enter a number to display its table 
Enter a valid number
```

Case 3: When a non number is written
```
Enter a number to display its table r
Enter a valid number
```

3. Write a Function in bash script to check if the number is prime or not? It should
support the following requirement.
• The script should accept the input from the User.

```
#!/bin/bash
# GETTING USER INPUT
read -p "Enter a num " num
# CHECKING THAT THE NUMBER IS VALID OR NOT
if ! [[ $num =~ ^[0-9]+$ ]]
then
   echo "Enter a valid number"
exit 1 fi
# TO STORE NUMBER OF FACTORS
no_of_factors=0
# LOOP TO COUNT NUMBER OF FACTORS
for i in $(eval echo {1..$num})
do
   if [[ $(($num%$i)) = 0 ]]
   then
       ((no_of_factors++))
   fi
   if [[ $no_of_factors > 2 ]]
   then
break
fi done
# PRINTING THE RESULT
if [[ $no_of_factors = 2 ]]
then
   echo "$num is a prime number"
else
   echo "$num is not a prime number"
fi
```

Output:

Case 1 - When number is a prime number
```
Enter a num 7
7 is a prime number
```

Case 2 - When a non prime number is given
```
Enter a num 4
4 is not a prime number
```

Case 3 - When a non number is given
```
Enter a num e
Enter a valid number
```

4. Create a bash script that supports the following requirement.
○ Create a folder 'Assignment'.
○ Create a file 'File 1.txt' inside 'Assignment' Folder.
○ Copy all the content of Table.sh(2nd script) in 'File1.txt' without using 'cp' and 'mv
command.
○ Append the text Welcome to Sigmoid' to the 'File 1.txt' file.
○ List all the directories and files present inside Desktop Folder.

```
#!/bin/bash
echo ""
# CHECKING IF ASSIGNMENT FOLDER EXISTS OR NOT
if [[ -d "$(pwd)/Assignment/" ]]
then
   echo "Folder already exists"
else
   $(mkdir Assignment)
   echo "Assignment Folder created"
fi
# CREATING FILE1.TXT INSIDE ASSIGNMENT FOLDER
$(touch Assignment/File1.txt)
echo "File1.txt created"
# COPYING CONTENTS OF TABLE.SH TO FILE1.TXT
$(cat Table.sh > Assignment/File1.txt)
echo "Contents of Table.sh copied to File1.txt"
# APPENDING "WELCOME TO SIGMOID" IN FILE1.TXT
echo "" >> Assignment/File1.txt
echo "Welcome to Sigmoid" >> Assignment/File1.txt
echo ""
echo "Contents of desktop folder are:"
# PRINTING FILES IN DESKTOP FOLDER
for file in ~/Desktop/*
do
   echo $(basename $file)
done
echo ""
```

Output:
```
Assignment Folder created
File1.txt created
Contents of Table.sh copied to File1.txt

Contents of desktop folder are:
Mirror_Image_File1.txt
Mirror_Image_File2.txt
Mirror_Image_File3.txt
```

5. You have given an array. Using Bash script, print its length, maximum element and minimum element.
arr=(2 3 4 1 6 7)

```
#!/bin/bash
arr=(2 3 4 1 6 7)
# PRINTING LENGTH OF ARRAY
echo "Length of array: ${#arr[@]}"
maxi=arr[0]
mini=arr[0]
# GETTING MAXIMUM AND MINIMUM
for i in ${arr[@]}
do
   if [[ $i -gt $maxi ]]
   then
maxi=$i fi
   if [[ $i -lt $mini ]]
   then
mini=$i fi
done
# PRINTING MAXIMUM AND MINIMUM VALUES
echo "Maximum element: $maxi"
echo "Minimum element: $mini"
```

Output:
```
Length of array: 6
Maximum element: 7
Minimum element: 1
```
