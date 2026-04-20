       IDENTIFICATION DIVISION.
       PROGRAM-ID. NESTED-LOOPS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I PIC 9(1) VALUE 0.
       01 WS-J PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 2
               PERFORM VARYING WS-J FROM 1 BY 1
                   UNTIL WS-J > 3
                   DISPLAY "I=" WS-I " J=" WS-J
               END-PERFORM
           END-PERFORM
           DISPLAY "Done"
           STOP RUN.
