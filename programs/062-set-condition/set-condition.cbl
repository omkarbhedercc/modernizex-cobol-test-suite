       IDENTIFICATION DIVISION.
       PROGRAM-ID. SET-CONDITION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-FLAG PIC 9(1) VALUE 0.
          88 IS-ON   VALUE 1.
          88 IS-OFF  VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Before: " WS-FLAG
           SET IS-ON TO TRUE
           DISPLAY "After:  " WS-FLAG
           IF IS-ON
               DISPLAY "Flag is ON"
           END-IF
           DISPLAY "Done"
           STOP RUN.
