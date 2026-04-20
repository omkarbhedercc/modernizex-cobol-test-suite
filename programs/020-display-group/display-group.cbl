       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISPLAY-GROUP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-PERSON.
          05 WS-FIRST-NAME   PIC X(5) VALUE "Jane".
          05 WS-LAST-NAME    PIC X(5) VALUE "Doe".
          05 WS-AGE          PIC 9(3) VALUE 42.

       PROCEDURE DIVISION.
           DISPLAY "Group:  [" WS-PERSON "]"
           DISPLAY "First:  [" WS-FIRST-NAME "]"
           DISPLAY "Last:   [" WS-LAST-NAME "]"
           DISPLAY "Age:    [" WS-AGE "]"
           STOP RUN.
