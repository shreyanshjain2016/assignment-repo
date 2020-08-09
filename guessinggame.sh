@@ -0,0 +1,32 @@
@@ -0,0 +1,31 @@
#!/bin/bash

function getFileNumber {
  ls -l | grep  ^[-l] | wc -l # Count file and symbolic links: Directories are no taken into account   
}

function runGame(){
fileNumber="$(getFileNumber)"
guess=false

count=3

while [[ $guess = false ]]
do
	echo 'Guess the no of files in the current directory: '
	read nguess
	if [[ $nguess -eq $fileNumber ]]
	then
	 echo "Congrats! You found the number!! "
	 let guess=true
	elif [[ $nguess -lt $fileNumber ]]
	then
	 echo "Your guess is too small, try again"
	else
	 echo "Your guess is too high, try again"	
	fi
done

}

runGamen
