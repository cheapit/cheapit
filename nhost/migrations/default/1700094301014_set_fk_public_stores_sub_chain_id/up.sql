alter table "public"."stores"
  add constraint "stores_sub_chain_id_fkey"
  foreign key ("sub_chain_id")
  references "public"."sub_chains"
  ("id") on update cascade on delete cascade;
