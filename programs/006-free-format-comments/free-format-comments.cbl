IDENTIFICATION DIVISION.
PROGRAM-ID. FREE-FORMAT-COMMENTS.

*> This is a free-format comment at the top
PROCEDURE DIVISION.
    *> Inline free-format comment before a statement
    DISPLAY "Before comment".
    DISPLAY "After comment". *> trailing comment on same line
    *> Another standalone comment
    DISPLAY "End of program".
    STOP RUN.
