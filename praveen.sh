echo -e "Select the Option From below:\n"

# -e option in echo command is used to
# enable interpretation of backslash escapes.

echo -e "\n
[ 1 ] For Only the Disk-Name and Used-Space \n
[ 2 ] For Only the Disk-Name and its Size \n
[ 3 ] To print Disk-Name and File-System \n
[ 4 ] To see all fields in DiskUsage \n"

# to take the user input
read userInput

# if to check the user input.
if [ $userInput == 1 ];
then

# -h is used for producing human readable and
# --output is used to specify field.
df -h --output = source,used
elif [ $userInput == 2 ];

then
df -h --output=source,size
elif [ $userInput == 3 ];
then

# "source" argument is for listing name of the source directory,
# "fstype" shows the file system type like ext4.
df -h --output=source,fstype
elif [ $userInput == 4 ];
then

# -a is used for all the fields.
df -ha
else

# if any wrong input is given.
echo "!!!!!!!!Wrong Output!!!!!!!!"
fi
