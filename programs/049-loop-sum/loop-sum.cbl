       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I   PIC 9(3) VALUE 0.
       01 WS-SUM PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 10
               ADD WS-I TO WS-SUM
           END-PERFORM
           DISPLAY "Sum 1..10 = " WS-SUM
           STOP RUN.
