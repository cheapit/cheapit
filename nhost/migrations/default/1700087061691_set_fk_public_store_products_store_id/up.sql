alter table "public"."store_products"
  add constraint "store_products_store_id_fkey"
  foreign key ("store_id")
  references "public"."stores"
  ("id") on update cascade on delete cascade;
