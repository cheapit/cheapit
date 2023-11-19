CREATE  INDEX "stores_sub_chain_id_store_number_key" on
  "public"."stores" using btree ("store_number", "sub_chain_id");
