
Unit interactionUnit;


Interface

Function hangPeople(errorCount: byte): string;

Implementation

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
