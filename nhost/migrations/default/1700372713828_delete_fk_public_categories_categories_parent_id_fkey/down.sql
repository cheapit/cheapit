alter table "public"."categories"
  add constraint "categories_parent_id_fkey"
  foreign key ("parent_id")
  references "public"."categories"
  ("id") on update no action on delete no action;
