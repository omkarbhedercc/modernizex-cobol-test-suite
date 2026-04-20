       IDENTIFICATION DIVISION.
       PROGRAM-ID. ON-EXCEPTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MSG PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           CALL "NONEXIST"
               ON EXCEPTION
                   DISPLAY "Call failed"
               NOT ON EXCEPTION
                   DISPLAY "Call OK"
           END-CALL
           DISPLAY "Done"
           STOP RUN.
