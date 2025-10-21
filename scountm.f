      PROGRAM SCOUNTM
        IMPLICIT NONE
        INTEGER NROW,COUNTR
        CHARACTER*16 FNAME
        WRITE(*,*) 'type a file name and press enter'
        READ *,FNAME
        NROW=COUNTR(FNAME)
        WRITE(*,*) 'n. of rows is ',NROW
      END
