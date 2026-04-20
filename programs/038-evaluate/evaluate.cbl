       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-NUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-GRADE PIC 9(1) VALUE 3.

       PROCEDURE DIVISION.
           EVALUATE WS-GRADE
               WHEN 1
                   DISPLAY "First"
               WHEN 2
                   DISPLAY "Second"
               WHEN 3
                   DISPLAY "Third"
           END-EVALUATE
           DISPLAY "Done"
           STOP RUN.
