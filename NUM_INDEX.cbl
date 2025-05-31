000000*> .................................................................... <*
000000*> CBL - NUM_INDEX                         :      Maximum Tension       <*
000000*> ........................................:........................... <*
000000*>                                         :     -__            __-     <*
000000*> Teoman Deniz                            : :    :!1!-_    _-!1!:    : <*
000000*> maximum-tension.com                     : ::                      :: <*
000000*>                                         : :!:    : :: : :  :  ::::!: <*
000000*> ....................................... :  :!:: :!:!1:!:!::1:::!!!:  <*
000000*> : C - Maximum Tension :: C 2025/05/31 : :  ::!::!!1001010!:!11!!::   <*
000000*> :.....................::..............: :  :!1!!11000000000011!!:    <*
000000*> : License - MIT       :: U 2025/05/31 : :   ::::!!!1!!1!!!1!!!::     <*
000000*> :.....................::..............: :      ::::!::!:::!::::      <*
000000*> ........................................:........................... <*
000000
000000*> ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, <*
000000*> : PARAGRAPH : NUM-INDEX                                            : <*
000000*> ;,,,,,,,,,,,;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,; <*
000000*> : INPUTS    : NUM_INDEX_NUMBER, NUM_INDEX_INDEX                    : <*
000000*> :...........:......................................................: <*
000000*> : OUTPUT    : NUM_INDEX_RESULT (via WORKING-STORAGE)               : <*
000000*> :...........:......................................................: <*
000000
000000*> ************************ [v] VARIABLES [v] ************************* <*
000000 WORKING-STORAGE SECTION.
000001 01 NUM_INDEX_NUMBER      PIC  9(9) COMP-5.
000001 01 NUM_INDEX_INDEX       PIC  9(4) COMP-5.
000001 01 NUM_INDEX_RESULT      PIC S9(4) COMP-5.
000001 01 NUM_INDEX_NUMBER_2    PIC  9(9) COMP-5.
000001 01 NUM_INDEX_NUMBER_SIZE PIC  9(4) COMP-5.
000001 01 NUM_INDEX_POSITION    PIC  9(4) COMP-5.
000000*> ************************ [^] VARIABLES [^] ************************* <*
000000
000000 NUM_INDEX.
000001 IF NUM_INDEX_NUMBER LESS THAN ZERO
000002 COMPUTE NUM_INDEX_NUMBER = NUM_INDEX_NUMBER * -1
000001 END-IF
000001 IF NUM_INDEX_NUMBER = 0
000002 IF NUM_INDEX_INDEX = 0
000003 MOVE 0 TO NUM_INDEX_RESULT
000002 ELSE
000003 MOVE -1 TO NUM_INDEX_RESULT
000002 END-IF
000002 EXIT.
000001 END-IF
000001 MOVE NUM_INDEX_NUMBER TO NUM_INDEX_NUMBER_2
000001 IF NUM_INDEX_NUMBER_2 LESS THAN 10
000002 MOVE 1 TO NUM_INDEX_NUMBER_SIZE
000001 ELSE
000002 MOVE 0 TO NUM_INDEX_NUMBER_SIZE
000002 PERFORM UNTIL NUM_INDEX_NUMBER_2 = 0
000003 COMPUTE NUM_INDEX_NUMBER_2 = FUNCTION INTEGER(NUM_INDEX_NUMBER_2 / 10)
000003 ADD 1 TO NUM_INDEX_NUMBER_SIZE
000002 END-PERFORM
000001 END-IF
000001 IF NUM_INDEX_INDEX >= NUM_INDEX_NUMBER_SIZE
000002 MOVE -1 TO NUM_INDEX_RESULT
000002 EXIT
000001 END-IF
000001 COMPUTE NUM_INDEX_POSITION = NUM_INDEX_NUMBER_SIZE - NUM_INDEX_INDEX - 1
000001 PERFORM UNTIL NUM_INDEX_POSITION = 0
000002 COMPUTE NUM_INDEX_NUMBER = FUNCTION INTEGER(NUM_INDEX_NUMBER / 10)
000002 SUBTRACT 1 FROM NUM_INDEX_POSITION
000001 END-PERFORM
000001 COMPUTE NUM_INDEX_RESULT = FUNCTION MOD(NUM_INDEX_NUMBER, 10)
000001 EXIT.
000000
