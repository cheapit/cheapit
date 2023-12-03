alter table "public"."chain_data_instructions"
  add constraint "chain_data_instructions_chain_id_fkey"
  foreign key ("chain_id")
  references "public"."chains"
  ("id") on update no action on delete no action;
