compile:
	cp spectralnorm.fpascal-2.fpascal spectralnorm.fpascal-2.pas
	fpc -FuInclude/fpascal -XXs -O4 -Tlinux -Fi Include/fpascal -oFPASCAL_RUN spectralnorm.fpascal-2.pas
	mv FPASCAL_RUN spectralnorm.fpascal-2.fpascal_run
	rm spectralnorm.fpascal-2.pas
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./spectralnorm.fpascal-2.fpascal_run 5500" Pascal spectral-norm

run:
	./spectralnorm.fpascal-2.fpascal_run 5500

mem:
	/usr/bin/time -v ./spectralnorm.fpascal-2.fpascal_run 5500

valgrind:
	valgrind --tool=massif --stacks=yes ./spectralnorm.fpascal-2.fpascal_run 5500
