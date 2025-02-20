cc := gcc

all:
	cc now.c -o run

clean:
	rm run

#a := one two # a is set to the string "one two"
#b := 'one two' # Not recommended. b is set to the string "'one two'"
#pr:
#	printf '$a\n'
#	printf $b
#	printf '\n'


av: f1.o f2.o

f1.o f2.o:
	echo $@ #is an automatic variable that contains the target name.


# Print out file information about every .c file
print: $(wildcard *.c)
	ls -la  $?
