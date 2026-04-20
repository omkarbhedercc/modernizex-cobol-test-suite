       IDENTIFICATION DIVISION.
       PROGRAM-ID. FD-RECORD.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMP-FILE ASSIGN TO "emp.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD EMP-FILE.
       01 EMP-REC.
          05 EMP-ID   PIC 9(5).
          05 EMP-NAME PIC X(10).
          05 EMP-SAL  PIC 9(7).

       WORKING-STORAGE SECTION.
       01 WS-MSG PIC X(30) VALUE SPACES.

       PROCEDURE DIVISION.
           OPEN OUTPUT EMP-FILE
           MOVE 10001 TO EMP-ID
           MOVE "John Doe  " TO EMP-NAME
           MOVE 0050000 TO EMP-SAL
           WRITE EMP-REC
           CLOSE EMP-FILE
           DISPLAY "Record written"
           STOP RUN.
