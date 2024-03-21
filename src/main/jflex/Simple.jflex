/* --------------------------Section de Code Utilisateur---------------------*/
package fr.usmb.m1isc.compilation.simple;
import java_cup.runtime.Symbol;

%%

/* -----------------Section des Declarations et Options----------------------*/
// nom de la class a generer
%class SimpleLexer
%unicode
%line   // numerotation des lignes
%column // numerotation caracteres par ligne

// utilisation avec CUP
// nom de la classe generee par CUP qui contient les symboles terminaux
%cupsym SimpleParserSym
// generation analyser lexical pour CUP
%cup

// code a ajouter dans la classe produite
%{

%}

/* definitions regulieres */
entier  =   [0-9]+
sep     =   \s|\n|\r|\r\n

%% 
/* ------------------------Section des Regles Lexicales----------------------*/

/* regles */
{sep}+          { /* pas d'action */ }
{entier}        { return new Symbol(SimpleParserSym.ENTIER, new Integer(yytext())); }
"+"             { return new Symbol(SimpleParserSym.PLUS, yyline, yycolumn); }
"-"             { return new Symbol(SimpleParserSym.MOINS, yyline, yycolumn); }
"*"             { return new Symbol(SimpleParserSym.MUL, yyline, yycolumn); }
"/"             { return new Symbol(SimpleParserSym.DIV, yyline, yycolumn); }
"mod"           { return new Symbol(SimpleParserSym.MOD, yyline, yycolumn); }
"("             { return new Symbol(SimpleParserSym.PAR_G, yyline, yycolumn); }
")"             { return new Symbol(SimpleParserSym.PAR_D, yyline, yycolumn); }
";"             { return new Symbol(SimpleParserSym.POINT_VIRGULE,yyline, yycolumn); }
.               { return new Symbol(SimpleParserSym.ERROR, yyline, yycolumn); }
