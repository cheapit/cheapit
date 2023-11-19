alter table "public"."sub_chains"
  add constraint "sub_chains_sub_chain_id_chain_id_fkey"
  foreign key ("sub_chain_id", "chain_id")
  references "public"."stores"
  ("sub_chain_id", "chain_id") on update no action on delete no action;
