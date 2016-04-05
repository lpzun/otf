#ifdef SATABS
#define assume(e) __CPROVER_assume(e)
#define assert(e) __CPROVER_assert(e,"error")
#define acquire(m) \
{ \
  __CPROVER_atomic_begin(); \
	assume(m==0); \
	m = 1; \
	__CPROVER_atomic_end(); \
}
#define release(m) \
{ \
  __CPROVER_atomic_begin(); \
	assume(m==1); \
	m = 0; \
	__CPROVER_atomic_end(); \
}
#endif

#define WORKPERTHREAD 2
#define THREADSMAX 3
volatile int max = 0x80000000, m = 0;

int storage[WORKPERTHREAD*THREADSMAX];

inline void findMax(int offset){

	int i;
	int e;
	int my_max = 0x80000000;

	for(i = offset; i < offset+WORKPERTHREAD; i++) {
#ifndef NOBUG
		e = storage[i];
#else
    e = rand();
#endif

		if(e > my_max) {
			my_max = e;
		}
		assert(e <= my_max);
	}

	acquire(m);
	{
		if(my_max > max) {
			max = my_max;
		}
	}
	release(m);

	assert(my_max <= max);
}

void thr1() {
	int offset;

#ifdef SATABS
	assume(offset % WORKPERTHREAD == 0 && offset >= 0 && offset < WORKPERTHREAD*THREADSMAX);
#else
	assume(offset < WORKPERTHREAD && offset >= 0 && offset < WORKPERTHREAD*THREADSMAX);
#endif

	findMax(offset);
}

#ifdef SATABS
int main(){
	while(1) { __CPROVER_ASYNC_01: thr1(); }
}
#endif
