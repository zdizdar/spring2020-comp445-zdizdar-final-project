# Makefile

CC=gcc
OMP=-fopenmp

all: matrix_generator

# tsp_iter1 tsp_rec omp_tsp_stat

matrix_generator: matrix_generator
	${CC} -o matrix_generator matrix_generator.c

tsp_iter1: tsp_iter1
	${CC} -g -Wall -o tsp_iter1 tsp_iter1.c

tsp_rec: tsp_rec
	${CC} -g -Wall -o tsp_rec tsp_rec.c

omp_tsp_stat: omp_tsp_stat.c
	${CC} -g -Wall ${OMP} -o omp_tsp_stat omp_tsp_stat.c

clean:
	rm -f matrix_generator tsp_iter1 tsp_rec omp_tsp_stat

# Don't pay attention to this
# omp_tsp_dyn: omp_tsp_dyn.c
# 	${CC} ${OMP} -o omp_tsp_dyn omp_tsp_dyn.c -lm
