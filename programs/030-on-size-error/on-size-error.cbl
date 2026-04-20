       IDENTIFICATION DIVISION.
       PROGRAM-ID. ON-SIZE-ERROR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A   PIC 9(3) VALUE 900.
       01 WS-B   PIC 9(3) VALUE 200.
       01 WS-SUM PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           ADD WS-A WS-B GIVING WS-SUM
               ON SIZE ERROR
                   DISPLAY "Overflow detected"
               NOT ON SIZE ERROR
                   DISPLAY "Sum OK: " WS-SUM
           END-ADD
           DISPLAY "Done"
           STOP RUN.
