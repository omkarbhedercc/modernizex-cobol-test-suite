       IDENTIFICATION DIVISION.
       PROGRAM-ID. GROUP-ITEM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CUSTOMER.
          05 WS-FIRST-NAME   PIC X(10) VALUE "Jane".
          05 WS-LAST-NAME    PIC X(10) VALUE "Doe".
          05 WS-AGE          PIC 9(3)  VALUE 35.

       PROCEDURE DIVISION.
           DISPLAY "First: " WS-FIRST-NAME
           DISPLAY "Last:  " WS-LAST-NAME
           DISPLAY "Age:   " WS-AGE
           STOP RUN.
