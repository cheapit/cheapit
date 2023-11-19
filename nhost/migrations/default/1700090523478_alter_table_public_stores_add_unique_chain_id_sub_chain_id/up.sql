alter table "public"."stores" add constraint "stores_chain_id_sub_chain_id_key" unique ("chain_id", "sub_chain_id");
