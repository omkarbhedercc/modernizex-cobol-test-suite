       IDENTIFICATION DIVISION.
       PROGRAM-ID. PIC-X-STRING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-GREETING        PIC X(20) VALUE "Hello from WS field!".
       01 WS-NAME            PIC X(10) VALUE "COBOL".

       PROCEDURE DIVISION.
           DISPLAY WS-GREETING
           DISPLAY "Name: " WS-NAME
           STOP RUN.
