FC=flang
RM=rm -rf
.PHONY: all clean

all: countrows fcreateb freadb scountm  test test2

countrows: countrows.f
	$(FC) $< -o $@
fcreateb: fcreateb.f
	$(FC) $< -o $@
freadb: freadb.f
	$(FC) $< -o $@
scountm: scountm.f scountrows.f
	$(FC) $^ -o $@
test: test.f
	$(FC) $< -o $@
test2: test2.f
	$(FC) $< -o $@
clean: 
	$(RM) countrows fcreateb freadb scountm test test2
