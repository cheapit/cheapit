alter table "public"."promotion_items" drop constraint "promotion_items_promotion_id_fkey",
  add constraint "promotion_items_PromotionId_fkey"
  foreign key ("PromotionId")
  references "public"."promotions"
  ("id") on update cascade on delete cascade;
