      PROGRAM SCOUNTM
        IMPLICIT NONE
        INTEGER NROW,COUNTR,MSUM
        CHARACTER(16) FNAME
        WRITE(0,*) 'type a file name and press enter'
        READ *,FNAME
        NROW=COUNTR(FNAME)
        WRITE(0,*) 'n. of rows is ',NROW
      END
