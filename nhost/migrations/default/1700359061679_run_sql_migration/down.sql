-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- -- -- Chains Table in 'public' Schema
-- -- CREATE TABLE public.chains (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   name varchar
-- -- );
--
-- -- -- Sub Chains Table in 'public' Schema
-- -- CREATE TABLE public.sub_chains (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   name varchar
-- -- );
--
-- -- -- Manufacturers Table in 'public' Schema
-- -- CREATE TABLE public.manufacturers (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   manufacturer_name varchar(50),
-- --   manufacturer_code varchar(50),
-- --   country_of_manufacture varchar(20)
-- -- );
--
-- -- -- Categories Table in 'public' Schema
-- -- CREATE TABLE public.categories (
-- --   id int PRIMARY KEY,
-- --   name varchar,
-- --   slug varchar,
-- --   parent_id int REFERENCES public.categories (id) -- Self-reference for parent categories
-- -- );
--
-- -- -- Products Table in 'public' Schema
-- -- CREATE TABLE public.products (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   item_code varchar(50),
-- --   internal_barcode varchar(1),
-- --   manufacturer_id int REFERENCES public.manufacturers (id),
-- --   item_name varchar(50),
-- --   category_id int REFERENCES public.categories (id),
-- --   item_type varchar(10),
-- --   manufacturer_item_description varchar(100)
-- -- );
--
-- -- -- Stores Table in 'public' Schema
-- -- CREATE TABLE public.stores (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   chain_id int REFERENCES public.chains (id),
-- --   sub_chain_id int REFERENCES public.sub_chains (id),
-- --   store_number varchar(3),
-- --   bikoret_no varchar(1),
-- --   store_type varchar(1),
-- --   sub_chain_name_hebrew varchar(50),
-- --   store_name varchar(50),
-- --   store_address varchar(50),
-- --   city varchar(20),
-- --   zip_code varchar(7),
-- --   last_update_date varchar(10),
-- --   last_update_time varchar(8)
-- -- );
--
-- -- -- Store Products Table in 'public' Schema
-- -- CREATE TABLE public.store_products (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   store_id int REFERENCES public.stores (id),
-- --   product_id int REFERENCES public.products (id),
-- --   item_status varchar(10),
-- --   price float,
-- --   price_date date,
-- --   is_weighted boolean,
-- --   quantity_in_package numeric,
-- --   allow_discount boolean,
-- --   quantity_measure varchar(10),
-- --   unit_amount int,
-- --   unit_of_measure varchar(10)
-- -- );
--
-- -- -- Store Product Prices History Table in 'public' Schema
-- -- CREATE TABLE public.store_product_prices_history (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   store_product_id int REFERENCES public.store_products (id),
-- --   price float,
-- --   price_date date
-- -- );
--
-- -- -- Promotions Table in 'public' Schema
-- -- CREATE TABLE public.promotions (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   promotion_id varchar(50),
-- --   promotion_description varchar(100),
-- --   promotion_update_datetime timestamp,
-- --   start_datetime timestamp,
-- --   end_datetime timestamp,
-- --   reward_type varchar(10),
-- --   discount_type varchar(10),
-- --   discount_rate float,
-- --   allow_multiple_discounts boolean,
-- --   min_qty int,
-- --   max_qty int,
-- --   discounted_price float,
-- --   discounted_price_per_unit float,
-- --   min_no_of_items_offered int,
-- --   additional_restrictions varchar(100),
-- --   remarks varchar(100),
-- --   min_purchase_amount float
-- -- );
--
-- -- -- Promotion Items Table in 'public' Schema
-- -- CREATE TABLE public.promotion_items (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   promotion_id int REFERENCES public.promotions (id),
-- --   item_code varchar(50),
-- --   is_gift_item boolean,
-- --   item_type varchar(10)
-- -- );
--
-- -- -- Images Table in 'public' Schema
-- -- CREATE TABLE public.images (
-- --   id int PRIMARY KEY,
-- --   src varchar,
-- --   name varchar,
-- --   product_id int REFERENCES public.products (id)
-- -- );
--
-- -- -- Carts Table in 'public' Schema
-- -- CREATE TABLE public.carts (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   user_id uuid REFERENCES auth.users (id),
-- --   cart_name varchar
-- -- );
--
-- -- -- Cart Items Table in 'public' Schema
-- -- CREATE TABLE public.cart_items (
-- --   id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
-- --   cart_id int REFERENCES public.carts (id),
-- --   product_id int REFERENCES public.products (id),
-- --   quantity int
-- -- );
-- -- TRUNCATE TABLE public.products CASCADE;
-- -- ALTER SEQUENCE public.products_id_seq RESTART WITH 1;
--
-- ALTER TABLE public.products
-- ALTER COLUMN item_code TYPE INTEGER USING item_code::INTEGER;