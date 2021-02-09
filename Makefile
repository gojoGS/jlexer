.PHONY: clean all
CXX=g++

all: jlexer

jlexer: lex.yy.cc
	$(CXX) -o jlexer lex.yy.cc

lex.yy.cc: jlexer.l
	flex++ jlexer.l

clean:
	rm jlexer