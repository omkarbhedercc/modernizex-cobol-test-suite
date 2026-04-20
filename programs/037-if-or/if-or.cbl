       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-OR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-DAY PIC 9(1) VALUE 7.

       PROCEDURE DIVISION.
           IF WS-DAY = 6 OR WS-DAY = 7
               DISPLAY "Weekend"
           ELSE
               DISPLAY "Weekday"
           END-IF
           DISPLAY "Done"
           STOP RUN.
