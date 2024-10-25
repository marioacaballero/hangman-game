
Unit interactionUnit;


Interface

Uses crt;

Function hangPeople(errorCount: byte): string;
Procedure exitGame(Var key: String; text: String; color: byte);


Implementation

Procedure exitGame(Var key: String; text: String; color: byte);
Begin
  key := '1';
  Case color Of 
    1: textcolor(red);
    2: textcolor(green);
  End;
  WriteLn('');
  Writeln(text);
  readkey;
End;

Function hangPeople(errorCount: byte): string;
Begin
  Case errorCount Of 
    0:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    1:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    2:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|      |');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    3:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|     /|');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    4:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|     /|\');
         WriteLn('|       ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    5:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|     /|\');
         WriteLn('|     / ');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
    6:
       Begin
         WriteLn('--------');
         WriteLn('|      |');
         WriteLn('|      O');
         WriteLn('|     /|\');
         WriteLn('|     / \');
         WriteLn('|       ');
         WriteLn('|       ');
       End;
  End;
End;

End.
