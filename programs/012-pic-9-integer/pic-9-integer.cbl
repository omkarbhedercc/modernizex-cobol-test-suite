       IDENTIFICATION DIVISION.
       PROGRAM-ID. PIC-9-INTEGER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-AGE             PIC 9(3) VALUE 42.
       01 WS-YEAR            PIC 9(4) VALUE 2026.

       PROCEDURE DIVISION.
           DISPLAY "Age: " WS-AGE
           DISPLAY "Year: " WS-YEAR
           STOP RUN.
