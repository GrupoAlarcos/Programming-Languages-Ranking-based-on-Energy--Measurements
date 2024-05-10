compile:
	javac -d .  fannkuchredux.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java   fannkuchredux 12" Java fannkuch-redux

run:
	java   fannkuchredux 12

mem:
	/usr/bin/time -v  java   fannkuchredux 12

valgrind:
	valgrind --tool=massif --stacks=yes  java   fannkuchredux 12
