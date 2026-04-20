       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROUNDED-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A        PIC 9(3) VALUE 5.
       01 WS-B        PIC 9(3) VALUE 3.
       01 WS-TRUNC    PIC 9(3) VALUE 0.
       01 WS-ROUND    PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           COMPUTE WS-TRUNC         = WS-A / WS-B
           COMPUTE WS-ROUND ROUNDED = WS-A / WS-B
           DISPLAY "Truncated (5/3): " WS-TRUNC
           DISPLAY "Rounded   (5/3): " WS-ROUND
           STOP RUN.
