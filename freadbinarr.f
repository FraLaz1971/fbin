C READ BINARY DATA
      PROGRAM FREADB
        IMPLICIT NONE
        CHARACTER*16 FN
        INTEGER I,W,H,ARR(20,20)
        WRITE(*,*)'type filename and press enter'
        READ(*,'(A16)') FN
        PRINT *,'type n. of rows'
        READ(*,*) H
        PRINT *,'type n. of columns'
        READ(*,*) W
        OPEN(11,FILE=FN,FORM='UNFORMATTED',ACCESS='DIRECT', RECL=4)
        I=1
10        READ(11,REC=I,ERR=20) ARR(I/W,MOD(I,W))
          PRINT *, ARR(I/W,MOD(I,W))
          I=I+1
        GOTO 10  
20      CONTINUE
        CLOSE(11) 
        WRITE(*,*) 'read ',I-1,'rows'
      END
