C WRITE BINARY DATA
C 2 COLUMNS WITH N ROWS
      PROGRAM FCREATEB
        IMPLICIT NONE
        CHARACTER*16 FN
        INTEGER I,N
        WRITE(*,*)'type output filename and press enter'
        READ(*,'(A16)') FN
        WRITE(*,*)'and number of rows and press enter'
        READ(*,*) N
        OPEN(11,FILE=FN,FORM='UNFORMATTED',ACCESS='DIRECT', RECL=8)
        DO 10,I=1,N
          WRITE(11,REC=I) I,I**3
10      CONTINUE
        CLOSE(11) 
      END
