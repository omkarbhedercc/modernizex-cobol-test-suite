       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE-PARENS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A       PIC 9(3) VALUE 5.
       01 WS-B       PIC 9(3) VALUE 4.
       01 WS-C       PIC 9(3) VALUE 3.
       01 WS-NATURAL PIC 9(4) VALUE 0.
       01 WS-FORCED  PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           COMPUTE WS-NATURAL = WS-A + WS-B * WS-C
           COMPUTE WS-FORCED  = (WS-A + WS-B) * WS-C
           DISPLAY "A + B * C   = " WS-NATURAL
           DISPLAY "(A + B) * C = " WS-FORCED
           STOP RUN.
