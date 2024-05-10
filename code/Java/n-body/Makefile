compile:
	cp nbody.java-4.java nbody.java
	javac -d .  nbody.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java   nbody 50000000" Java n-body

run:
	java   nbody 50000000

mem:
	/usr/bin/time -v java   nbody 50000000

valgrind:
	valgrind --tool=massif --stacks=yes java   nbody 50000000
