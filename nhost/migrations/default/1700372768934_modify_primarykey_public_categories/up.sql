BEGIN TRANSACTION;
ALTER TABLE "public"."categories" DROP CONSTRAINT "categories_pkey";

ALTER TABLE "public"."categories"
    ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("new_id");
COMMIT TRANSACTION;
