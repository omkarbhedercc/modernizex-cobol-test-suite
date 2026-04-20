       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-AT-END.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "test.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-REC PIC X(20).

       PROCEDURE DIVISION.
           OPEN INPUT IN-FILE
           READ IN-FILE
               AT END
                   DISPLAY "End of file"
               NOT AT END
                   DISPLAY "Got: " IN-REC
           END-READ
           CLOSE IN-FILE
           DISPLAY "Done"
           STOP RUN.
