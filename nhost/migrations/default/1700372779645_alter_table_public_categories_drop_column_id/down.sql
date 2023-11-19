alter table "public"."categories" alter column "id" drop not null;
alter table "public"."categories" add column "id" int4;
