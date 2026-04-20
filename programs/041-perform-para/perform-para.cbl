       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-PARA.

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "Before call"
           PERFORM GREET-PARA
           DISPLAY "After call"
           STOP RUN.

       GREET-PARA.
           DISPLAY "Hello from GREET-PARA".
