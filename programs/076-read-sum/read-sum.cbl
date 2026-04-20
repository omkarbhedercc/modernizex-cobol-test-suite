       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-SUM.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "nums.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-REC PIC 9(5).
       WORKING-STORAGE SECTION.
       01 WS-EOF PIC 9(1) VALUE 0.
       01 WS-SUM PIC 9(7) VALUE 0.
       PROCEDURE DIVISION.
           OPEN INPUT IN-FILE
           PERFORM UNTIL WS-EOF = 1
               READ IN-FILE
                   AT END MOVE 1 TO WS-EOF
                   NOT AT END ADD IN-REC TO WS-SUM
               END-READ
           END-PERFORM
           CLOSE IN-FILE
           DISPLAY "Total: " WS-SUM
           STOP RUN.
