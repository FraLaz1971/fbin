      PROGRAM TESTBLOCK
        INTEGER I
        OPEN(10, FILE='test3x4.bin', FORM='UNFORMATTED',
     &  ACCESS='DIRECT', RECL=4)
        DO 10 I=1,12
          WRITE(10,REC=I) I
10      CONTINUE
        CLOSE(10)
      END
