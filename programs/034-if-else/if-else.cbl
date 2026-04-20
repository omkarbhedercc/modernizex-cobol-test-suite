       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-ELSE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SCORE PIC 9(3) VALUE 045.

       PROCEDURE DIVISION.
           IF WS-SCORE >= 050
               DISPLAY "Pass"
           ELSE
               DISPLAY "Fail"
           END-IF
           DISPLAY "Done"
           STOP RUN.
