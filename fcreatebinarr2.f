      PROGRAM FCBR
        IMPLICIT NONE
        CHARACTER*16 FN
        INTEGER I,J,H,W
        WRITE(*,*) 'type file name and press enter'
        READ(*,'(A16)') FN
        WRITE(*,*) 'type number of rows and press enter'
        READ(*,*) H
        WRITE(*,*) 'and number of columns and press enter'
        READ(*,*) W
        PRINT *,'W = ',W,' H = ',H
        OPEN(11, FILE=FN, STATUS='NEW',FORM='UNFORMATTED'
     & ,ACCESS='DIRECT',RECL=4)
        DO 10 I=1,H
          DO 20 J=1,W
             WRITE(11,REC=(I-1)*W+J) (I-1)*W + J
             PRINT *,(I-1)*W+J
20        CONTINUE
10      CONTINUE

        CLOSE(11)
      END
