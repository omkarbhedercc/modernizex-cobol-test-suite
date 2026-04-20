       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-OTHER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-COLOR PIC X(5) VALUE "BLACK".

       PROCEDURE DIVISION.
           EVALUATE WS-COLOR
               WHEN "RED  "
                   DISPLAY "Color is red"
               WHEN "BLUE "
                   DISPLAY "Color is blue"
               WHEN OTHER
                   DISPLAY "Unknown color"
           END-EVALUATE
           DISPLAY "Done"
           STOP RUN.
