BEGIN ~3303GRD1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~CheckStatLT(LastTalkedToBy(),7,INT)~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END
