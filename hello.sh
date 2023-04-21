#!/bin/bash
#It can generate a hello world cpp, used for test Makefile env.
if [ "$1" = "do" ]; then
if [ -f hello_world.cpp ]; then
				echo "there is already a hello_world.cpp"
else

touch hello_world.cpp
echo "#include <iostream>" >hello_world.cpp
echo "int main() {" >hello_world.cpp
echo "std::cout<<"hello, world"<<endl;" >hello_world.cpp
echo "return 0;" >hello_world.cpp
echo "}" >hello_world.cpp
fi
elif [ "$1" = "undo" ]; then
rm -i ./hello_world.cpp
else 
				echo "only 1 parameter is permitted, "do" make the file, "undo" deltete it."
fi
