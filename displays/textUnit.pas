
Unit textUnit;


Interface

Uses crt;

Procedure PrintWave();
Procedure PrintWave2();
Procedure printThanks();

Implementation

Procedure PrintWave();

Var 
  text: array[1..11] Of string;
  i, j: integer;
Begin
  text[1] := '  Y   Y  OOO   U   U        W   W  OOO  N   N!';
  text[2] := '   Y Y  O   O  U   U        W   W O   O NN  N ';
  text[3] := '    Y   O   O  U   U        W W W O   O N N N ';
  text[4] := '    Y   O   O  U   U        W W W O   O N  NN ';
  text[5] := '    Y    OOO    UUU         W W   OOO  N   N ';
  text[6] := '  ';
  text[7] := '  Y   Y  OOO   U   U        W   W  OOO  N   N  !';
  text[8] := '   Y Y  O   O  U   U        W   W O   O NN  N  !';
  text[9] := '    Y   O   O  U   U        W W W O   O N N N  !';
  text[10] := '    Y   O   O  U   U        W W W O   O N  NN    ';
  text[11] := '    Y    OOO    UUU         W W   OOO  N   N  !';

  // wave effect
  For i := 1 To Length(text) Do
    Begin
      ClrScr;
      For j := 1 To Length(text) Do
        Begin
          If (j = i) Or (j = i - 1) Or (j = i + 1) Then
            WriteLn(text[j])
          Else
            WriteLn(' ');
        End;
      Delay(300);
    End;

  ClrScr;
  For j := 1 To Length(text) Do
    WriteLn(text[j]);

  // flash effect
  For i := 1 To 3 Do
    Begin
      Delay(400);
      ClrScr;
      For j := 1 To Length(text) Do
        WriteLn(text[j]);
      Delay(400);
      ClrScr;
    End;

  For j := 1 To Length(text) Do
    WriteLn(text[j]);
End;

Procedure PrintWave2();

Var 
  text: array[1..11] Of string;
  face: array[1..7] Of string;
  i, j: integer;
Begin
  text[1] := ' Y   Y  OOO   U   U        L      OOO   SSSS  EEEEE!';
  text[2] := '  Y Y  O   O  U   U        L     O   O S      E     ';
  text[3] := '   Y   O   O  U   U        L     O   O  SSS   EEEE  ';
  text[4] := '   Y   O   O  U   U        L     O   O     S  E     ';
  text[5] := '   Y    OOO    UUU         LLLLL  OOO   SSSS  EEEEE!';
  text[6] := '  ';
  text[7] := ' Y   Y  OOO   U   U        L      OOO   SSSS  EEEEE!';
  text[8] := '  Y Y  O   O  U   U        L     O   O S      E     ';
  text[9] := '   Y   O   O  U   U        L     O   O  SSS   EEEE  ';
  text[10] := '   Y   O   O  U   U        L     O   O     S  E     ';
  text[11] := '   Y    OOO    UUU         LLLLL  OOO   SSSS  EEEEE!';

  face[1] := '    .-""""""-.';
  face[2] := '  /  _    _   \';
  face[3] := ' |  |o|  |o|   |';
  face[4] := ' |   \____/    |';
  face[5] := ' |      --     |';
  face[6] := '  \   .----.  /';
  face[7] := '   `-......-` ';

  // wave effect
  For i := 1 To Length(text) Do
    Begin
      ClrScr;
      For j := 1 To Length(text) Do
        Begin
          If (j = i) Or (j = i - 1) Or (j = i + 1) Then
            WriteLn(text[j])
          Else
            WriteLn(' ');
        End;
      Delay(300);
    End;

  // flash effect
  For i := 1 To 3 Do
    Begin
      Delay(500);
      ClrScr;
      For j := 1 To Length(face) Do
        WriteLn(face[j]);
      Delay(500);
      ClrScr;
    End;

  ClrScr;
  For j := 1 To 6 Do
    WriteLn(text[j]);
  For j := 1 To Length(face) Do
    WriteLn(face[j]);
End;

Procedure printThanks();
Begin
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
  writeln('  PPPP   L      A   Y   Y  IIIII  N   N   GGGG');
  writeln('  P   P  L     A A   Y Y     I    NN  N  G    ');
  writeln('  PPPP   L    AAAAA   Y      I    N N N  G  GG');
  writeln('  P      L    A   A   Y      I    N  NN  G   G');
  writeln('  P      LLLLL A   A   Y   IIIII  N   N   GGGG');
End;
End.
