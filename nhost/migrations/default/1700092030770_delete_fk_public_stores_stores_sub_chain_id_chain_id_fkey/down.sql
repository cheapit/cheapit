alter table "public"."stores"
  add constraint "stores_sub_chain_id_chain_id_fkey"
  foreign key ("chain_id", "sub_chain_id")
  references "public"."sub_chains"
  ("chain_id", "sub_chain_id") on update cascade on delete cascade;
