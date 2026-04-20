       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-VARY-DISP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I   PIC 9(2) VALUE 0.
       01 WS-SQ  PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 5
               COMPUTE WS-SQ = WS-I * WS-I
               DISPLAY WS-I " squared = " WS-SQ
           END-PERFORM
           DISPLAY "Done"
           STOP RUN.
