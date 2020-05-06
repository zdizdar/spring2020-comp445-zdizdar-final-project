# Makefile

CC=gcc
# LIB=-lm
OMP=-fopenmp

# PGCC=pgcc
# MC=-fast -ta=multicore -Minfo=accel
# KER=-fast -ta=tesla:cc75,managed -Minfo=accel

all: omp_tsp_dyn omp_tsp_stat

# hist_equal_seq: hist_equal_seq.c
# 	${CC} -o hist_equal_seq hist_equal_seq.c ${LIB} ${OMP}

omp_tsp_dyn: omp_tsp_dyn.c
	${CC} ${OMP} -o omp_tsp_dyn omp_tsp_dyn.c -lm

omp_tsp_stat: omp_tsp_stat.c
	${CC} ${OMP} -o omp_tsp_stat omp_tsp_stat.c -lm

# hist_equal_kernels: hist_equal_kernels.c
# 	${PGCC} ${KER} -o hist_equal_kernels hist_equal_kernels.c ${LIB}

clean:
	rm -f omp_tsp_dyn
