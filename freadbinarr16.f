C READ BINARY DATA
      PROGRAM FREB16
        IMPLICIT NONE
        CHARACTER*16 FN
        INTEGER I
        INTEGER*2 VAL
        WRITE(*,*)'type filename and press enter'
        READ(*,'(A16)') FN
        OPEN(11, FILE=FN,ACCESS='DIRECT', RECL=2)
        I=1
10        READ(11,REC=I,ERR=20) VAL
          PRINT *,VAL
          I=I+1
        GOTO 10  
20      CONTINUE
        CLOSE(11) 
        WRITE(*,*) 'read ',I-1,'rows'
      END
