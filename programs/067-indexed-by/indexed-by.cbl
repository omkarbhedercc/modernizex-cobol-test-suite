       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDEXED-BY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-NAME PIC X(5) OCCURS 3 TIMES
             INDEXED BY WS-IDX.

       PROCEDURE DIVISION.
           MOVE "Alice" TO WS-NAME(1)
           MOVE "Bob  " TO WS-NAME(2)
           MOVE "Carol" TO WS-NAME(3)
           SET WS-IDX TO 1
           DISPLAY "Index 1: " WS-NAME(WS-IDX)
           SET WS-IDX TO 3
           DISPLAY "Index 3: " WS-NAME(WS-IDX)
           STOP RUN.
