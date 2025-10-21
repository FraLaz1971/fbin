      PROGRAM FCBR
        IMPLICIT NONE
        CHARACTER*16 FN
        INTEGER I,J,H,W
        INTEGER*2 VAL
        WRITE(*,*) 'type file name and press enter'
        READ(*,'(A16)') FN
        WRITE(*,*) 'type number of rows and press enter'
        READ(*,*) H
        WRITE(*,*) 'and number of columns and press enter'
        READ(*,*) W
        PRINT *,'W = ',W,' H = ',H
        OPEN(11, FILE=FN, STATUS='NEW',FORM='UNFORMATTED'
     & ,ACCESS='DIRECT',RECL=2)
        DO 10 I=1,H
          DO 20 J=1,W
             VAL=(I-1)*W+J
             WRITE(11,REC=(I-1)*W+J) VAL
             PRINT *,VAL
20        CONTINUE
10      CONTINUE

        CLOSE(11)
      END
