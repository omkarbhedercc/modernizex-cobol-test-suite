       IDENTIFICATION DIVISION.
       PROGRAM-ID. OCCURS-2D.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MATRIX.
          05 WS-ROW OCCURS 2 TIMES.
             10 WS-COL PIC 9(1) OCCURS 3 TIMES.
       01 WS-I PIC 9(1) VALUE 0.
       01 WS-J PIC 9(1) VALUE 0.
       01 WS-V PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 1 TO WS-COL(1, 1)
           MOVE 2 TO WS-COL(1, 2)
           MOVE 3 TO WS-COL(1, 3)
           MOVE 4 TO WS-COL(2, 1)
           MOVE 5 TO WS-COL(2, 2)
           MOVE 6 TO WS-COL(2, 3)
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 2
               PERFORM VARYING WS-J FROM 1 BY 1
                   UNTIL WS-J > 3
                   MOVE WS-COL(WS-I, WS-J) TO WS-V
                   DISPLAY "M(" WS-I "," WS-J ")=" WS-V
               END-PERFORM
           END-PERFORM
           STOP RUN.
