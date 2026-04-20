       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-SPACES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME            PIC X(10) VALUE "COBOL".

       PROCEDURE DIVISION.
           DISPLAY "Before: [" WS-NAME "]"
           MOVE SPACES TO WS-NAME
           DISPLAY "After:  [" WS-NAME "]"
           STOP RUN.
