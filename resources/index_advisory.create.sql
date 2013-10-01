
create table advise_index(	reloid		oid,
								attrs		integer[],
								profit		real,
								index_size	integer,
								backend_pid	integer,
								timestamp	timestamptz);

create index IA_reloid on advise_index( reloid );
create index IA_backend_pid on advise_index( backend_pid );
