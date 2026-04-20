       IDENTIFICATION DIVISION.
       PROGRAM-ID. INLINE-PERFORM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I PIC 9(1) VALUE 1.

       PROCEDURE DIVISION.
           PERFORM UNTIL WS-I > 3
               DISPLAY "Step " WS-I
               ADD 1 TO WS-I
           END-PERFORM
           DISPLAY "Done"
           STOP RUN.
