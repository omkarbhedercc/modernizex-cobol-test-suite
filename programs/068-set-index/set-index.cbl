       IDENTIFICATION DIVISION.
       PROGRAM-ID. SET-INDEX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-VAL PIC 9(2) OCCURS 5 TIMES
             INDEXED BY WS-IDX.

       PROCEDURE DIVISION.
           MOVE 11 TO WS-VAL(1)
           MOVE 22 TO WS-VAL(2)
           MOVE 33 TO WS-VAL(3)
           MOVE 44 TO WS-VAL(4)
           MOVE 55 TO WS-VAL(5)
           SET WS-IDX TO 2
           DISPLAY "At 2: " WS-VAL(WS-IDX)
           SET WS-IDX UP BY 2
           DISPLAY "At 4: " WS-VAL(WS-IDX)
           SET WS-IDX DOWN BY 1
           DISPLAY "At 3: " WS-VAL(WS-IDX)
           STOP RUN.
