       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEARCH-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-ENTRY OCCURS 5 TIMES
             INDEXED BY WS-IDX.
             10 WS-ID   PIC 9(3).
             10 WS-NAME PIC X(5).
       01 WS-FOUND PIC X(3) VALUE "NO ".

       PROCEDURE DIVISION.
           MOVE 101 TO WS-ID(1)
           MOVE "Alice" TO WS-NAME(1)
           MOVE 102 TO WS-ID(2)
           MOVE "Bob  " TO WS-NAME(2)
           MOVE 103 TO WS-ID(3)
           MOVE "Carol" TO WS-NAME(3)
           MOVE 104 TO WS-ID(4)
           MOVE "Dave " TO WS-NAME(4)
           MOVE 105 TO WS-ID(5)
           MOVE "Eve  " TO WS-NAME(5)
           SET WS-IDX TO 1
           SEARCH WS-ENTRY
               AT END
                   DISPLAY "Not found"
               WHEN WS-ID(WS-IDX) = 103
                   DISPLAY "Found: " WS-NAME(WS-IDX)
                   MOVE "YES" TO WS-FOUND
           END-SEARCH
           DISPLAY "Found flag: " WS-FOUND
           STOP RUN.
