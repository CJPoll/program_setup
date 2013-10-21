echo "Needs to be run as root to work"

echo "Creating lib directories in /usr/local/lib/"
mkdir -p /usr/local/lib/program_setup/c/
mkdir -p /usr/local/lib/program_setup/java/
mkdir -p /usr/local/lib/program_setup/ruby/
echo "Created lib directories in /usr/local/lib/"

echo "Copying lib files to /usr/local/lib/c/"
cp ./c/Makefile /usr/local/lib/program_setup/c/
cp ./c/.ycm_extra_conf.py /usr/local/lib/program_setup/c/
echo "Copied lib files to /usr/local/lib/c/"

echo "Copying executable files to /usr/local/bin"
cp ./c/cprog_setup /usr/local/bin/

echo "Unit test libraries are checked when setting up an application"


