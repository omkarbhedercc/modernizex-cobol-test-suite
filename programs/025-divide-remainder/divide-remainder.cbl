       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE-REMAINDER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A  PIC 9(4) VALUE 1007.
       01 WS-B  PIC 9(3) VALUE 25.
       01 WS-Q  PIC 9(4) VALUE 0.
       01 WS-R  PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           DIVIDE WS-B INTO WS-A GIVING WS-Q REMAINDER WS-R
           DISPLAY "Dividend:  " WS-A
           DISPLAY "Divisor:   " WS-B
           DISPLAY "Quotient:  " WS-Q
           DISPLAY "Remainder: " WS-R
           STOP RUN.
