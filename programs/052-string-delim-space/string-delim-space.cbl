       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING-DELIM-SPACE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-FIRST  PIC X(10) VALUE "Jane      ".
       01 WS-SECOND PIC X(10) VALUE "Doe       ".
       01 WS-RESULT PIC X(25) VALUE SPACES.

       PROCEDURE DIVISION.
           STRING WS-FIRST DELIMITED BY SPACE
                  " "       DELIMITED BY SIZE
                  WS-SECOND DELIMITED BY SPACE
                  INTO WS-RESULT
           END-STRING
           DISPLAY "Result: [" WS-RESULT "]"
           STOP RUN.
