       IDENTIFICATION DIVISION.
       PROGRAM-ID. OCCURS-VARY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-NUM PIC 9(3) OCCURS 5 TIMES.
       01 WS-I PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 10 TO WS-NUM(1)
           MOVE 20 TO WS-NUM(2)
           MOVE 30 TO WS-NUM(3)
           MOVE 40 TO WS-NUM(4)
           MOVE 50 TO WS-NUM(5)
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 5
               DISPLAY "Num(" WS-I ")=" WS-NUM(WS-I)
           END-PERFORM
           STOP RUN.
