compile:
	javac -d .  binarytrees.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java binarytrees 21" Java binary-trees

run:
	java binarytrees 21

mem:
	/usr/bin/time -v java binarytrees 21

valgrind:
	valgrind --tool=massif --stacks=yes java binarytrees 21
