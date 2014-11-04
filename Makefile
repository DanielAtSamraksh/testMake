

all: test_t1 test_t2
	@echo "making all"
	@echo "$@ OK"


t1: dep1

t1:
	echo "making t1"
	touch t1

test_t1: Makefile
	make t1
	! make t1 | grep "making t1"
	touch dep1
	make t1 | grep "making t1"
	@echo "$@ OK"


t2:
	echo "making t2"
	touch t2

t2: dep2

test_t2: Makefile
	make t2
	! make t2 | grep "making t2"
	touch dep2
	make t2 | grep "making t2"
	@echo "$@ OK"

.cpp.o:
	echo ".cpp.o"

t1.o: dep1

t1.o:
	echo "making t1"
	touch t1.o



t2.o:
	echo "making t1"
	touch t1

t2.o: dep1 t2.cpp
