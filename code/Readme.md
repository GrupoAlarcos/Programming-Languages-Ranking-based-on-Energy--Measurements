## Code Folder

The code folder contains 14 subfolders, one for each programming language, and a gen-input file to generate the input files needed to run some algorithms. It is structured as follows:

```Java

| <Programming Language-1>
	| <algorithm-1>
		| <source>
		| Makefile
	| ...
	| <algorithm-i>
		| <source>
		| Makefile
| ...
| <Programming Language-i>
	| <algorithm-1>
	| ...
	| <algorithm-i>
| gen-input.sh

```

Taking the `C` programming language as an example, this is how the folder for the `binary-trees` algorithm would look like:

```Java

| C
	| binary-trees
		| binarytrees.gcc-3.c
		| Makefile
	| ...

```

#### The Operations

Each algorithm sub-folder, included in a programming language folder, contains a `Makefile`.
TThis is the file which shows how to perform the 2 main operations: *(1)* **compilation** and *(2)* **execution**.

Basically, each `Makefile` **must** contain 2 rules, one for each operations:

| Rule | Description |
| -------- | -------- |
| `compile` | This rule specifies how the algorithm should be compiled in the language under consideration; Interpreted languages do not need it, so it can be left blank in these cases.
| `run` | This rule specifies how the algorithm should be executed; It is used to test whether the algorithm runs with no errors and the output is the expected. 

To illustrate this, an example of the `Makefile` for the `binary-trees` algorithm in the `C` language is:

```Makefile
compile:
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -fopenmp -D_FILE_OFFSET_BITS=64 -I/usr/include/apr-1.0 binarytrees.gcc-3.c -o binarytrees.gcc-3.gcc_run -lapr-1 -lgomp -lm

run:
	./binarytrees.gcc-3.gcc_run 21

```