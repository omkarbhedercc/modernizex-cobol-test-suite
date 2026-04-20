       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL-AND.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I   PIC 9(2) VALUE 1.
       01 WS-SUM PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM UNTIL WS-I > 10 OR WS-SUM > 20
               ADD WS-I TO WS-SUM
               DISPLAY "I=" WS-I " Sum=" WS-SUM
               ADD 1 TO WS-I
           END-PERFORM
           DISPLAY "Final sum: " WS-SUM
           STOP RUN.
