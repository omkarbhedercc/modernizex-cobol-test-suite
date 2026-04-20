       IDENTIFICATION DIVISION.
       PROGRAM-ID. NESTED-IF.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-AGE    PIC 9(3) VALUE 025.
       01 WS-INCOME PIC 9(5) VALUE 50000.

       PROCEDURE DIVISION.
           IF WS-AGE > 018
               IF WS-INCOME > 30000
                   DISPLAY "Eligible"
               ELSE
                   DISPLAY "Low income"
               END-IF
           ELSE
               DISPLAY "Too young"
           END-IF
           DISPLAY "Done"
           STOP RUN.
