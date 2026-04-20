       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE-SIMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A       PIC 9(3) VALUE 5.
       01 WS-B       PIC 9(3) VALUE 4.
       01 WS-C       PIC 9(3) VALUE 3.
       01 WS-RESULT  PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           COMPUTE WS-RESULT = WS-A + WS-B * WS-C
           DISPLAY "A: " WS-A
           DISPLAY "B: " WS-B
           DISPLAY "C: " WS-C
           DISPLAY "Result (A + B * C): " WS-RESULT
           STOP RUN.
