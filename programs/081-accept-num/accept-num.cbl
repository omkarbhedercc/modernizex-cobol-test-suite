       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPT-NUM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM PIC 9(5) VALUE 0.
       PROCEDURE DIVISION.
           DISPLAY "Enter number: "
           ACCEPT WS-NUM
           DISPLAY "You entered: " WS-NUM
           STOP RUN.
