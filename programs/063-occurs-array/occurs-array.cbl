       IDENTIFICATION DIVISION.
       PROGRAM-ID. OCCURS-ARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
          05 WS-ITEM PIC X(5) OCCURS 3 TIMES.

       PROCEDURE DIVISION.
           MOVE "Alpha" TO WS-ITEM(1)
           MOVE "Beta " TO WS-ITEM(2)
           MOVE "Gamma" TO WS-ITEM(3)
           DISPLAY "Item 1: " WS-ITEM(1)
           DISPLAY "Item 2: " WS-ITEM(2)
           DISPLAY "Item 3: " WS-ITEM(3)
           STOP RUN.
