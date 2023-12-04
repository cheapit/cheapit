alter table "public"."chain_data_instructions" alter column "network_code" drop not null;
alter table "public"."chain_data_instructions" add column "network_code" int4;
