ifdef USE_PGXS
PGXS := $(shell pg_config --pgxs)
include $(PGXS)
else
subdir = contrib/pgadviser/pg_advise
top_builddir = ../../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif


#CC := gcc
#CFLAGS := -O0

PROGRAM = pg_advise_index
PGAPPICON = win32
#OBJS = advise_index.o util_funcs.o
OBJS = util_funcs.o

#PG_CPPFLAGS = -I$(libpq_srcdir)
PG_LIBS = 

.PHONY: clean install

all:
	$(CC) -c util_funcs.c
	$(CC) $(OBJS) -I /usr/local/pgsql/include -I /usr/local/pgsql/include/server -L /usr/local/pgsql/lib -l pq -o $(PROGRAM) advise_index.c 
     
clean:
	rm -f $(PROGRAM)
	rm -f $(OBJS)