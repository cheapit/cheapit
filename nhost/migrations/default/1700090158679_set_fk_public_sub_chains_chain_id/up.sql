alter table "public"."sub_chains"
  add constraint "sub_chains_chain_id_fkey"
  foreign key ("chain_id")
  references "public"."chains"
  ("id") on update cascade on delete cascade;
