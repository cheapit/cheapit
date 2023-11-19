alter table "public"."stores" drop constraint "stores_chain_id_fkey",
  add constraint "stores_chain_id_fkey"
  foreign key ("chain_id")
  references "public"."chains"
  ("id") on update cascade on delete cascade;
