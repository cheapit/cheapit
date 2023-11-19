alter table "public"."sub_chains" drop constraint "sub_chains_chain_id_SubChainId_key";
alter table "public"."sub_chains" add constraint "sub_chains_id_chain_id_key" unique ("id", "chain_id");
