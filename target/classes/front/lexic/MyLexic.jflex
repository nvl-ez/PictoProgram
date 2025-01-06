/**
 * Assignatura 21780 - Compiladors
 * Estudis: Grau en Informàtica 
 * Itinerari: Intel·ligència Artificial i Computació
 *
 * Alumnes: Nahuel Vazquez y Yelizaveta Denysova
 */
package front.lexic;

import java.io.*;

import java_cup.runtime.*;
import java_cup.runtime.ComplexSymbolFactory.ComplexSymbol;

import front.sintactic.ParserSym;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import utils.ErrorHandler;
import utils.ErrorPhase;

import utils.Types;
import utils.OpComp;
import utils.OpLog;
import utils.OpArit;
%%


/****
 Indicació de quin tipus d'analitzador sintàctic s'utilitzarà. En aquest cas 
 es fa ús de Java CUP.
 ****/
%cup

%public              // Per indicar que la classe és pública
%class Scanner       // El nom de la classe

%unicode
%integer
%line
%column

%{
    private BufferedWriter writer; 
%}

%init{
    String file = "compileFiles/Tokens.txt";

    try {
        writer = new BufferedWriter(new FileWriter(file));
    } catch (IOException e) {
        e.printStackTrace();
    }
%init}


%eofval{
    return symbol(ParserSym.EOF);
%eofval}

// Declaracions
quote = \'
character = {quote}[\x20-\x7E]{quote}//
id		= [A-Za-z_][A-Za-z0-9_]*/**/
type            = [🕳🔢🔤✅]
booleanValue    = [👍👎]
arrayIcon       = 📦
const           = 🔒
main            = 🏠
read            = 👁
write           = ✏
return          = ↩

digit10		= [0-9]//

lparen          = \( //
rparen          = \) //
lbracket        = \{ //
rbracket        = \} //


whitespace = [ \t\r\n]
comma = ,

decimal		= {digit10}+

assign          = ⬅ //

letterA         = ['A'|'a'] //
letterD         = ['D'|'d'] //
letterN         = ['N'|'n'] //
letterO         = ['O'|'o'] //
letterR         = ['R'|'r'] //

opif            = ❓ //
opelse          = ❌ //

EQ          = ⚖
GE          = ⬆⚖
LE          = ⬇⚖
GT          = ⬆
LT          = ⬇
NE          = 🚫 //

AND           = ({letterA}{letterN}{letterD})
OR            = ({letterO}{letterR}) //

SUM          = ➕
SUB          = ➖
MUL          = ✖
DIV          = ➗
MOD          = ® //

opinc           = ➕➕

opwhile         = 🔁 // 
opfor           = 🔂 //

ws              = {whitespace}+
endline         = ;


// El següent codi es copiarà també, dins de la classe. És a dir, si es posa res
// ha de ser en el format adient: mètodes, atributs, etc. 
%{

    private ComplexSymbol symbol(int type) throws IOException{
        writer.write(ParserSym.terminalNames[type]+" "); 
        writer.flush();
        ComplexSymbol cs = new ComplexSymbol(ParserSym.terminalNames[type], type);
        cs.left = yyline + 1;
        cs.right = yycolumn;
        return cs;
    }
    
    private ComplexSymbol symbol(int type, Object value) throws IOException{
        writer.write(ParserSym.terminalNames[type]+" "); 
        writer.flush();
        ComplexSymbol cs = new ComplexSymbol(ParserSym.terminalNames[type], type, value);
        cs.left = yyline + 1;
        cs.right = yycolumn;
        return cs;
    }

    public void closeTokenStram(){
        try {
            if (writer != null) {
                writer.close();  
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static ErrorHandler eh;
    public void setErrorHandler(ErrorHandler eh) {
      this.eh = eh;
    }
%}

/****************************************************************************/
%%

// Regles/accions
{character}     { return symbol(ParserSym.Character, this.yytext().charAt(1)); }
{id}            { return symbol(ParserSym.Id, this.yytext()); }
{type}          {
                    String type = this.yytext();
                    if(type.equals("🕳".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.Type, Types.VOID);
                    } else if(type.equals("🔢".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.Type, Types.INT);
                    } else if(type.equals("🔤".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.Type, Types.CHAR);
                    } else if(type.equals("✅".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.Type, Types.BOOL);
                    }
                }


{booleanValue}  { 
                    if(this.yytext().equals("👍".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.BooleanValue, true);
                    } else if(this.yytext().equals("👎".replaceAll("\\ufe0f", ""))){
                        return symbol(ParserSym.BooleanValue, false);
                    }
                }
                
{arrayIcon}     { return symbol(ParserSym.ArrayIcon); }
{const}         { return symbol(ParserSym.Const); }
{assign}        { return symbol(ParserSym.Assign); }
{main}          { return symbol(ParserSym.Main); }
{read}          { return symbol(ParserSym.Read); }
{write}         { return symbol(ParserSym.Write); }
{return}        { return symbol(ParserSym.Return); }

{AND}           { return symbol(ParserSym.AND, OpLog.AND);}
{OR}            { return symbol(ParserSym.OR, OpLog.OR);}
                
                
{decimal}       { return symbol(ParserSym.Decimal, Integer.parseInt(this.yytext())); }
{comma}         { return symbol(ParserSym.Comma); }
{lparen}        { return symbol(ParserSym.Lparen); }
{rparen}        { return symbol(ParserSym.Rparen); }
{lbracket}      { return symbol(ParserSym.Lbracket); }
{rbracket}      { return symbol(ParserSym.Rbracket); }
{opif}          { return symbol(ParserSym.Opif); }
{opelse}        { return symbol(ParserSym.Opelse); }

{EQ}            {return symbol(ParserSym.EQ, OpComp.EQUAL);}
{GE}            {return symbol(ParserSym.GE, OpComp.GREATER_EQUAL_THAN);}
{LE}            {return symbol(ParserSym.LE, OpComp.LESS_EQUAL_THAN);}
{GT}            {return symbol(ParserSym.GT, OpComp.GREATER_THAN);}
{LT}            {return symbol(ParserSym.LT, OpComp.LESS_THAN);}
{NE}            {return symbol(ParserSym.NE, OpComp.DIFFERENT);}

{opinc}         { return symbol(ParserSym.Opinc); }


{SUM}           {return symbol(ParserSym.SUM, OpArit.SUM);}
{SUB}           {return symbol(ParserSym.SUB, OpArit.SUB);}
{MUL}           {return symbol(ParserSym.MUL, OpArit.MUL);}
{DIV}           {return symbol(ParserSym.DIV, OpArit.DIV);}
{MOD}           {return symbol(ParserSym.MOD, OpArit.MOD);}

{opfor}         { return symbol(ParserSym.Opfor); }
{opwhile}       { return symbol(ParserSym.Opwhile); }
{endline}       { return symbol(ParserSym.Endline); }
{ws}            {}
[^]             {eh.addError(ErrorPhase.Lexic, "Unexpected character: '"+yytext()+"'", yyline + 1, yycolumn);}


/****************************************************************************/
