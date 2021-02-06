jlexer: lex.yy.cc
	g++ -o jlexer lex.yy.cc

lex.yy.cc: jlexer.l
	flex++ jlexer.l

clean:
	@rm jlexer

