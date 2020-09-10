all:
	yacc -d -v Project5.y
	lex Project5.l
	gcc  -c -g y.tab.c lex.yy.c Project5funcs.c symbolTable.c CtoMIPS.c
	gcc  -o start y.tab.o lex.yy.o Project5funcs.o symbolTable.o CtoMIPS.o

mips:
	qtspim &
	cat mips_code.s

clean:
	rm -f *.o
	rm -f mips_code.s
	rm -f a.out
	rm -f start
	rm -f y.tab.c lex.yy.c y.output y.tab.h
	ls -l
