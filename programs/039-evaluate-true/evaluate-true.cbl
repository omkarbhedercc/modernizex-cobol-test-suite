       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-TRUE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TEMP PIC 9(3) VALUE 035.

       PROCEDURE DIVISION.
           EVALUATE TRUE
               WHEN WS-TEMP < 010
                   DISPLAY "Cold"
               WHEN WS-TEMP < 025
                   DISPLAY "Cool"
               WHEN WS-TEMP < 040
                   DISPLAY "Warm"
               WHEN OTHER
                   DISPLAY "Hot"
           END-EVALUATE
           DISPLAY "Done"
           STOP RUN.
