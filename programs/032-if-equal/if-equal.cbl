       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-EQUAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CODE  PIC 9(3) VALUE 200.
       01 WS-CHECK PIC 9(3) VALUE 200.

       PROCEDURE DIVISION.
           IF WS-CODE = WS-CHECK
               DISPLAY "Codes match"
           END-IF
           IF WS-CODE = 999
               DISPLAY "Code is 999"
           END-IF
           DISPLAY "Done"
           STOP RUN.
