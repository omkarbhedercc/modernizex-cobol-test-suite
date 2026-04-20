       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAYROLL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-EMP.
          05 WS-NAME  PIC X(10).
          05 WS-HOURS PIC 9(3).
          05 WS-RATE  PIC 9(3)V99.
          05 WS-GROSS PIC 9(5)V99.
          05 WS-TAX   PIC 9(5)V99.
          05 WS-NET   PIC 9(5)V99.
       PROCEDURE DIVISION.
           MOVE "Alice     " TO WS-NAME
           MOVE 040 TO WS-HOURS
           MOVE 025.50 TO WS-RATE
           COMPUTE WS-GROSS = WS-HOURS * WS-RATE
           COMPUTE WS-TAX = WS-GROSS * 0.20
           COMPUTE WS-NET = WS-GROSS - WS-TAX
           DISPLAY "Employee: " WS-NAME
           DISPLAY "Gross:    " WS-GROSS
           DISPLAY "Tax:      " WS-TAX
           DISPLAY "Net:      " WS-NET
           STOP RUN.
