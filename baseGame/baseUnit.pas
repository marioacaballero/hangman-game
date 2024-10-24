
Unit baseUnit;

Interface

{$unitpath ../displays}

Uses crt, SysUtils, textUnit, interactionUnit;

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

Function missingLetters(notLetters: String): string;

Var i: byte;
Begin
  Write('Missing letters: ');
  For i:= 1 To Length(notLetters) Do
    Begin
      textcolor(red);
      Write(notLetters[i], ' ');
    End;
  WriteLn('');
  textcolor(white);
End;

Procedure findLetter(w, l: String; Var hideW, notLetters: String; Var errorCount
                     : byte);

Var i: byte;
  positions: string;
  isLetter: boolean;
Begin
  positions := '';
  isLetter := false;
  For i:= 1 To length(w) Do
    Begin
      If w[i] = l Then
        Begin
          isLetter := true;
          positions := positions + ' ' + inttostr(i);
        End;
    End;
  If (Not isLetter) Then
    notLetters := notLetters + l;
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
    WriteLn(hideW);
    WriteLn(' ');
    WriteLn('Errors: ', errorCount, ' of 6');
    WriteLn('');
    WriteLn(missingLetters(notLetters));
    If (errorCount = 6) Then
      exitGame(key, 'Something went wrong...', 1)
      // Begin
      //   key := '1';
      //   textcolor(red);
      //   WriteLn('');
      //   Writeln('Something went wrong...');
      //   readkey;
      // End
    Else If (hideW = w) Then
           exitGame(key, 'Congratulations!...', 2)
           //  Begin
           //    key := '1';
           //    textcolor(green);
           //    WriteLn('');
           //    Writeln('Congratulations!...');
           //    readkey;
           //  End
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
