       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-GREATER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-AGE   PIC 9(3) VALUE 025.
       01 WS-LIMIT PIC 9(3) VALUE 018.

       PROCEDURE DIVISION.
           IF WS-AGE > WS-LIMIT
               DISPLAY "Age exceeds limit"
           END-IF
           IF WS-AGE > 100
               DISPLAY "Over 100"
           END-IF
           DISPLAY "Done"
           STOP RUN.
