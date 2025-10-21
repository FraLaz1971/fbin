      PROGRAM TEST_OPEN
      IMPLICIT NONE
      CHARACTER*20 FNAME
      INTEGER I,J,H,W,LUN

      LUN = 11
      FNAME = 'array3x4.bin'
      H = 3
      W = 4

      OPEN(LUN, FILE=FNAME, FORM='UNFORMATTED',ACCESS='DIRECT'
     &,STATUS='REPLACE',RECL=4)

      DO I = 1, H
         DO J = 1, W
            WRITE(LUN, REC=(I-1)*W+J) (I-1)*W+J
         END DO
      END DO

      CLOSE(LUN)
      END
