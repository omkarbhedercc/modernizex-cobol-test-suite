       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-GIVING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A       PIC 9(4) VALUE 120.
       01 WS-B       PIC 9(4) VALUE 80.
       01 WS-SUM     PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
           ADD WS-A WS-B GIVING WS-SUM
           DISPLAY "A:   " WS-A
           DISPLAY "B:   " WS-B
           DISPLAY "Sum: " WS-SUM
           STOP RUN.
