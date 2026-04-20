       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-AND.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-AGE   PIC 9(3) VALUE 025.
       01 WS-SCORE PIC 9(3) VALUE 080.

       PROCEDURE DIVISION.
           IF WS-AGE > 018 AND WS-SCORE > 060
               DISPLAY "Qualified"
           ELSE
               DISPLAY "Not qualified"
           END-IF
           DISPLAY "Done"
           STOP RUN.
