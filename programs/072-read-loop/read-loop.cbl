       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-LOOP.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "input.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-REC PIC X(20).

       WORKING-STORAGE SECTION.
       01 WS-EOF PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
           OPEN INPUT IN-FILE
           PERFORM UNTIL WS-EOF = 1
               READ IN-FILE
                   AT END
                       MOVE 1 TO WS-EOF
                   NOT AT END
                       DISPLAY IN-REC
               END-READ
           END-PERFORM
           CLOSE IN-FILE
           DISPLAY "Done reading"
           STOP RUN.
