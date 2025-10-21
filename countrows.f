C COUNT ROWS IN BINARY DATA
      PROGRAM COUNTR
        IMPLICIT NONE
        CHARACTER(16) FN
        INTEGER I,V,V2
        WRITE(0,*)'type filename and press enter'
        READ(*,'(A16)') FN
        OPEN(11,FILE=FN,ACCESS='DIRECT',RECL=8)
         I=1
10       READ(11,REC=I,ERR=20) V,V2
         I=I+1
         GOTO 10
20      CONTINUE
        CLOSE(11) 
        PRINT *,'the file contains ',I-1,'rows/records'
      END
