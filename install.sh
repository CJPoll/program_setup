echo "Needs to be run as root to work"

echo "Creating lib directories in /usr/local/lib/"
mkdir -p /usr/local/lib/program_setup/c/
mkdir -p /usr/local/lib/program_setup/cpp/
mkdir -p /usr/local/lib/program_setup/java/
mkdir -p /usr/local/lib/program_setup/ruby/
mkdir -p /usr/local/lib/program_setup/erlang/
echo "Created lib directories in /usr/local/lib/"

echo "Copying lib files to /usr/local/lib/c/"
cp ./c/Makefile /usr/local/lib/program_setup/c/
cp ./c/.ycm_extra_conf.py /usr/local/lib/program_setup/c/
cp ./c/_test.c /usr/local/lib/program_setup/c/
echo "Copied lib files to /usr/local/lib/c/"

echo "Copying lib files to /usr/local/lib/cpp/"
cp ./cpp/Makefile /usr/local/lib/program_setup/cpp/
cp ./cpp/.ycm_extra_conf.py /usr/local/lib/program_setup/cpp/
cp ./cpp/_tests.cpp /usr/local/lib/program_setup/cpp/
cp ./cpp/main.cpp /usr/local/lib/program_setup/cpp/
cp ./cpp/.gitignore /usr/local/lib/program_setup/cpp/
echo "Copied lib files to /usr/local/lib/cpp/"

echo "Copying lib files to /usr/local/lib/program_setup/ruby"
cp ./ruby/Rakefile /usr/local/lib/program_setup/ruby/
cp ./ruby/minitest_helper.rb /usr/local/lib/program_setup/ruby/
echo "Copied lib files to /usr/local/lib/program_setup/ruby"

echo "Copying lib files to /usr/local/lib/program_setup/erlang"
cp ./erlang/Makefile /usr/local/lib/program_setup/erlang/
cp ./erlang/rebar.config /usr/local/lib/program_setup/erlang/
echo "Copied lib files to /usr/local/lib/program_setup/erlang"

echo "Copying lib files to /usr/local/lib/program_setup/java"
cp ./java/.syntastic_javac_config /usr/local/lib/program_setup/java/
cp ./java/Makefile /usr/local/lib/program_setup/java/

echo "Copying executable files to /usr/local/bin"
cp ./c/cprog_setup /usr/local/bin/
cp ./cpp/cpp_setup /usr/local/bin
cp ./ruby/rprog_setup /usr/local/bin/
cp ./erlang/erlprog_setup /usr/local/bin/
cp ./java/jprog_setup /usr/local/bin/

echo "Unit test libraries are checked when setting up an application"


