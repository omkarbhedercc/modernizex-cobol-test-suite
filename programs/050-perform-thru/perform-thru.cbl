       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-THRU.

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "Start"
           PERFORM STEP-A THRU STEP-C
           DISPLAY "End"
           STOP RUN.

       STEP-A.
           DISPLAY "Step A".

       STEP-B.
           DISPLAY "Step B".

       STEP-C.
           DISPLAY "Step C".
