       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-STRING-EQ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STATUS PIC X(5) VALUE "OPEN ".

       PROCEDURE DIVISION.
           IF WS-STATUS = "OPEN "
               DISPLAY "Status is OPEN"
           END-IF
           IF WS-STATUS = "CLOSE"
               DISPLAY "Status is CLOSE"
           END-IF
           DISPLAY "Done"
           STOP RUN.
