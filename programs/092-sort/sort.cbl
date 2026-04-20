       IDENTIFICATION DIVISION.
       PROGRAM-ID. SORT-DEMO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-NUM PIC 9(2) OCCURS 5 TIMES.
       01 WS-I PIC 9(1) VALUE 0.
       01 WS-J PIC 9(1) VALUE 0.
       01 WS-TEMP PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
           MOVE 30 TO WS-NUM(1)
           MOVE 10 TO WS-NUM(2)
           MOVE 50 TO WS-NUM(3)
           MOVE 20 TO WS-NUM(4)
           MOVE 40 TO WS-NUM(5)
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 4
               PERFORM VARYING WS-J FROM 1 BY 1
                   UNTIL WS-J > 4
                   IF WS-NUM(WS-J) > WS-NUM(WS-J + 1)
                       MOVE WS-NUM(WS-J) TO WS-TEMP
                       MOVE WS-NUM(WS-J + 1) TO WS-NUM(WS-J)
                       MOVE WS-TEMP TO WS-NUM(WS-J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 5
               DISPLAY WS-NUM(WS-I)
           END-PERFORM
           STOP RUN.
