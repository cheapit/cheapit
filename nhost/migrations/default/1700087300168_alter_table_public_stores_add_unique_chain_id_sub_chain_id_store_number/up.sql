alter table "public"."stores" add constraint "stores_chain_id_sub_chain_id_store_number_key" unique ("chain_id", "sub_chain_id", "store_number");
