       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
           PERFORM UNTIL WS-I > 5
               DISPLAY "I=" WS-I
               ADD 1 TO WS-I
           END-PERFORM
           DISPLAY "Done"
           STOP RUN.
