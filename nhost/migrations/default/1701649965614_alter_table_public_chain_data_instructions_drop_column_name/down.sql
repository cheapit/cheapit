alter table "public"."chain_data_instructions" alter column "name" drop not null;
alter table "public"."chain_data_instructions" add column "name" varchar;
