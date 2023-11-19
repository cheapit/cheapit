alter table "public"."stores" alter column "store_id" drop not null;
alter table "public"."stores" add column "store_id" int4;
