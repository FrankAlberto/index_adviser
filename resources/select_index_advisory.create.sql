
create or replace view select_index_advisory as
select	E'backend_pid\n'
		||	E'===========\n'
		||	backend_pid,
		show_index_advisory( backend_pid )
from	(select	distinct backend_pid
		from	advise_index as adv
		/* do not consider tables that no longer exist */
		where	exists (select	oid
								from	pg_class
								where	oid = adv.reloid)
		) as v;
