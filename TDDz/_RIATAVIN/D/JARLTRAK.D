BEGIN ~JARLTRAK~

IF ~Global("tz_trakxxx","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("tz_trakxxx","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @4 GOTO 2
END
