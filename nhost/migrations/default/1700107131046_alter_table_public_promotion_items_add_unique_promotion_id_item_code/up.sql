alter table "public"."promotion_items" add constraint "promotion_items_promotion_id_item_code_key" unique ("promotion_id", "item_code");
