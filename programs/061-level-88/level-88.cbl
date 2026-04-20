       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEVEL-88.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-STATUS PIC 9(1) VALUE 1.
          88 IS-ACTIVE  VALUE 1.
          88 IS-CLOSED  VALUE 0.

       PROCEDURE DIVISION.
           IF IS-ACTIVE
               DISPLAY "Active"
           ELSE
               DISPLAY "Not active"
           END-IF
           MOVE 0 TO WS-STATUS
           IF IS-CLOSED
               DISPLAY "Closed"
           END-IF
           DISPLAY "Done"
           STOP RUN.
