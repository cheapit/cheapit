alter table "public"."stores" drop constraint "stores_sub_chain_id_chain_id_fkey",
  add constraint "stores_sub_chain_id_fkey"
  foreign key ("sub_chain_id")
  references "public"."sub_chains"
  ("id") on update no action on delete no action;
