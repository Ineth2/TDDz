BEGIN ~GENCALI1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @8
  IF ~~ THEN REPLY @9 DO ~CreateVisualEffectObject("spplanar","gencali1")
Wait(2)
ActionOverride("gencali1",DestroySelf())~ EXIT
  IF ~~ THEN REPLY @10 DO ~CreateVisualEffectObject("spplanar","gencali1")
Wait(2)
ActionOverride("gencali1",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @11
  IF ~~ THEN DO ~CreateVisualEffectObject("spplanar","gencali1")
Wait(2)
ActionOverride("gencali1",DestroySelf())~ EXIT
END
