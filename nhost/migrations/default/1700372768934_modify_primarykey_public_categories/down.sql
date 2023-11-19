alter table "public"."categories" drop constraint "categories_pkey";
alter table "public"."categories"
    add constraint "categories_pkey"
    primary key ("id");
