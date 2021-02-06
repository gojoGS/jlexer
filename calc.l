%{
	#include <iostream>
%}

DIGIT		[0-9]
NONZERO_DIGIT [1-9]
WHITESPACE [ \t]

%option noyywrap

%%

"null" {
	std::cerr<<"Literal: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"true" {
	std::cerr<<"Literal: " <<yytext <<std::endl; 
	std::cout<< yytext <<'\n';
}

"false" {
	std::cerr<<"Literal: " <<yytext <<std::endl; 
	std::cout<< yytext <<'\n';
}

\"(\\.|[^"\\])*\"	{
	std::cerr<<"String: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

{NONZERO_DIGIT}{DIGIT}*	{
	std::cerr<<"Number: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"[" {
	std::cerr<<"Left bracket: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"]"	{
	std::cerr<<"Right bracket: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"{"	{
	std::cerr<<"Left curly: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"}"	{
	std::cerr<<"Right curly: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

"," {
	std::cerr<<"Comma: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

":"	{
	std::cerr<<"Colon: " <<yytext <<std::endl;
	std::cout<< yytext <<'\n';
}

{WHITESPACE}*	{}

.	{
	std::cerr<<"Unknown: " <<yytext <<std::endl;
}
%%

int main(int argc, char **argv)
{
	yyFlexLexer y;
	y.yylex();
	return 0;
}
