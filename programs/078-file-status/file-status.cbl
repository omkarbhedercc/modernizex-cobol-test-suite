       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE-STATUS.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "noexist.dat"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-FS.
       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-REC PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-FS PIC X(2) VALUE "00".
       PROCEDURE DIVISION.
           OPEN INPUT IN-FILE
           DISPLAY "Status: " WS-FS
           IF WS-FS NOT = "00"
               DISPLAY "File error"
           ELSE
               DISPLAY "File OK"
               CLOSE IN-FILE
           END-IF
           STOP RUN.
