
Unit baseUnit;

Interface

{$unitpath ../displays/}
{$unitpath ./}

Uses crt, textUnit, interactionUnit, utilsUnit;

Procedure initWord(w: String);

Implementation

Function showWord(w: String): string;

Var i: byte;
Begin
  For i:= 1 To length(w) Do
    Begin
      write(w[i], ' ');
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

Procedure initWord(w: String);

Var key, hideW, notLetters: string;
  errorCount: byte;
Begin
  textcolor(white);
  SetLength(hideW, Length(w));
  init(hideW, Length(w));
  errorCount := 0;
  notLetters := '';
  Repeat
    WriteLn(hangPeople(errorCount));
    gotoxy(15, 5);
    WriteLn(showWord(hideW));
    WriteLn(' ');
    WriteLn('Errors: ', errorCount, ' of 6');
    WriteLn('');
    WriteLn(missingLetters(notLetters));
    If (errorCount = 6) Then
      exitGame(key, 'Something went wrong...', 1)
    Else If (hideW = w) Then
           exitGame(key, 'Congratulations!...', 2)
    Else
      Begin
        Write('write a letter (type 1 to escape): ');
        textcolor(green);
        ReadLn(key);
        textcolor(white);
        findLetter(w, key, hideW, notLetters, errorCount);
      End;
    clrscr;
  Until key = '1';
  If errorCount = 6 Then
    Begin
      PrintWave2();
    End;
  If (hideW = w) Then
    Begin
      textcolor(blue);
      PrintWave();
    End;
  readkey;
  printThanks();
End;

End.
