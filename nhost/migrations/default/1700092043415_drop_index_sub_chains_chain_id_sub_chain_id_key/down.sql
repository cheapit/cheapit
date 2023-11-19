CREATE  INDEX "sub_chains_chain_id_sub_chain_id_key" on
  "public"."sub_chains" using btree ("chain_id", "sub_chain_id");
