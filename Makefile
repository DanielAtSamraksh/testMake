

all: t1 t2
	echo "making all"

t1: dep1

t1:
	echo "making t1"
	touch t1



t2:
	echo "making t2"
	touch t2

t2: dep2

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
