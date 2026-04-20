       IDENTIFICATION DIVISION.
       PROGRAM-ID. NESTED-MAIN.
       PROCEDURE DIVISION.
           DISPLAY "Main program"
           CALL "NESTED-SUB"
           DISPLAY "Back in main"
           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NESTED-SUB.
       PROCEDURE DIVISION.
           DISPLAY "In nested sub"
           GOBACK.
       END PROGRAM NESTED-SUB.
       END PROGRAM NESTED-MAIN.
