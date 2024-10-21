
Unit baseUnit;

Interface

Uses crt, SysUtils;

Procedure initWord(w: String);

Implementation

Function showWord(w: String): string;

Var i: byte;
Begin
  showWord := '';
  For i:= 1 To length(w) Do
    Begin
      showWord := showWord + w[i];
    End;
End;

Procedure init(Var w: String; l: integer);

Var i: byte;
Begin
  For i:= 1 To l Do
    Begin
      w[i] := '_';
    End;
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

Procedure findLetter(w, l: String; Var hideW: String; Var errorCount: byte);

Var i: byte;
  positions: string;
Begin
  positions := '';
  For i:= 1 To length(w) Do
    Begin
      If w[i] = l Then
        Begin
          positions := positions + ' ' + inttostr(i);
        End;
    End;
  If (length(positions) > 0) Then
    Begin
      For i:= 1 To length(positions) Do
        Begin
          If (positions[i] <> ' ') Then
            hideW[strtoint(positions[i])] := w[strtoint(positions[i])];
        End;
    End
  Else
    Inc(errorCount);
End;

Procedure initWord(w: String);

Var key, hideW: string;
  errorCount: byte;
Begin
  textcolor(white);
  SetLength(hideW, Length(w));
  init(hideW, Length(w));
  errorCount := 0;
  Repeat
    WriteLn(hangPeople(errorCount));
    gotoxy(15, 5);
    WriteLn(hideW);
    WriteLn(' ');
    WriteLn('Errors: ', errorCount, ' of 6');
    WriteLn('');
    Write('write a letter (type 1 to escape): ');
    ReadLn(key);
    findLetter(w, key, hideW, errorCount);
    If (errorCount = 6) Then
      key := '1';
    clrscr;
  Until key = '1';
  If errorCount = 6 Then
    Begin
      textcolor(red);
      writeln(' Y   Y  OOO   U   U        L      OOO   SSSS  EEEEE!');
      writeln('  Y Y  O   O  U   U        L     O   O S      E     ');
      writeln('   Y   O   O  U   U        L     O   O  SSS   EEEE  ');
      writeln('   Y   O   O  U   U        L     O   O     S  E     ');
      writeln('   Y    OOO    UUU         LLLLL  OOO   SSSS  EEEEE!');
      writeln;
      writeln('    .-""""""-.');
      writeln('  /  _    _   \');
      writeln(' |  |o|  |o|   |');
      writeln(' |   \____/    |');
      writeln(' |      --     |');
      writeln('  \   .----.  /');
      writeln('   `-......-` ');
    End;
  readkey;
  textcolor(green);
  clrscr;
  writeln('  TTTTT  H   H   A   N   N  K   K  SSSS!');
  writeln('    T    H   H  A A  NN  N  K  K  S     ');
  writeln('    T    HHHHH AAAAA N N N  KKK   SSSS  ');
  writeln('    T    H   H A   A N  NN  K  K      S ');
  writeln('    T    H   H A   A N   N  K   K  SSSS!');
  WriteLn(' ');
  writeln('  FFFFF  OOO   RRRR!');
  writeln('  F     O   O  R   R');
  writeln('  FFFF  O   O  RRRR ');
  writeln('  F     O   O  R R  ');
  writeln('  F      OOO   R  R!');
  WriteLn(' ');
  writeln('  PPPP   L      A   Y   Y!');
  writeln('  P   P  L     A A   Y Y  ');
  writeln('  PPPP   L    AAAAA   Y    ');
  writeln('  P      L    A   A   Y    ');
  writeln('  P      LLLLL A   A   Y   ');
End;

End.
