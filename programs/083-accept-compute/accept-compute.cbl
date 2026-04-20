       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPT-COMPUTE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A   PIC 9(3) VALUE 0.
       01 WS-B   PIC 9(3) VALUE 0.
       01 WS-SUM PIC 9(4) VALUE 0.
       PROCEDURE DIVISION.
           DISPLAY "Enter A: "
           ACCEPT WS-A
           DISPLAY "Enter B: "
           ACCEPT WS-B
           ADD WS-A TO WS-B GIVING WS-SUM
           DISPLAY "Sum: " WS-SUM
           STOP RUN.
