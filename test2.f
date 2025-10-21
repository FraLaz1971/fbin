      PROGRAM TEST2
        A=3.0
        B=4.0
        WRITE(*,201) A,B,A+B,A*B
201   FORMAT(1H ,T10,'MULTIRECORD EXAMPLE'/
     & 1H ,'sum of',F6.2,' and ',F6.2,' is ',F6.3/
     & 1H ,'the product is',F6.2)
      END
