IDENTIFICATION DIVISION.
PROGRAM-ID. STOP-RUN-DEMO.

PROCEDURE DIVISION.
    DISPLAY "Before STOP RUN".
    DISPLAY "About to terminate".
    STOP RUN.
    DISPLAY "This line should never print".
