
Unit utilsUnit;


Interface

Uses crt, SysUtils;

Function missingLetters(notLetters: String): string;
Procedure findLetter(w, l: String; Var hideW, notLetters: String; Var errorCount
                     : byte);


Implementation

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
      If w[i] = upcase(l) Then
        Begin
          isLetter := true;
          positions := positions + ' ' + inttostr(i);
        End;
    End;
  If (Not isLetter) Then
    notLetters := notLetters + upcase(l);
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

End.
