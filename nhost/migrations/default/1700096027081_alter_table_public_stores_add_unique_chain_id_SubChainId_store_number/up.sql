alter table "public"."stores" drop constraint "stores_sub_chain_id_store_number_key";
alter table "public"."stores" add constraint "stores_chain_id_SubChainId_store_number_key" unique ("chain_id", "SubChainId", "store_number");
