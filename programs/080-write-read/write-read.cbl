       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITE-READ.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT WR-FILE ASSIGN TO "wr.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD WR-FILE.
       01 WR-REC PIC X(10).
       WORKING-STORAGE SECTION.
       01 WS-EOF PIC 9(1) VALUE 0.
       PROCEDURE DIVISION.
           OPEN OUTPUT WR-FILE
           MOVE "Line1     " TO WR-REC
           WRITE WR-REC
           MOVE "Line2     " TO WR-REC
           WRITE WR-REC
           CLOSE WR-FILE
           OPEN INPUT WR-FILE
           PERFORM UNTIL WS-EOF = 1
               READ WR-FILE
                   AT END MOVE 1 TO WS-EOF
                   NOT AT END DISPLAY WR-REC
               END-READ
           END-PERFORM
           CLOSE WR-FILE
           DISPLAY "Done"
           STOP RUN.
