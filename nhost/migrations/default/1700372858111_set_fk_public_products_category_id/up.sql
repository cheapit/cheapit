alter table "public"."products"
  add constraint "products_category_id_fkey"
  foreign key ("category_id")
  references "public"."categories"
  ("id") on update set null on delete set null;
