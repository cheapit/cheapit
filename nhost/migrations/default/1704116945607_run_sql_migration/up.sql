-- CREATE OR REPLACE FUNCTION create_match_suggestions() RETURNS void AS $$
-- BEGIN
--     -- Clear the match_suggestions table (optional)
--     -- TRUNCATE public."match_suggestions";

--     -- Insert into match_suggestions
--     INSERT INTO public."match_suggestions"(product_id, user_product_id, score)
--     SELECT 
--         p.id AS product_id, 
--         up.id AS user_product_id,
--         (
--             0.60 * (1 - (p.embedding <=> up.embedding))
--             + 0.40 * (1 - (p.image_embedding <=> up.image_embedding))
--         ) AS score
--     FROM public.products p, public."userProducts" up
--     WHERE 
--         (
--             0.60 * (1 - (p.embedding <=> up.embedding))
--             + 0.40 * (1 - (p.image_embedding <=> up.image_embedding))
--         ) > 0.6
--     ORDER BY score DESC;

--     RETURN;
-- END;
-- $$ LANGUAGE plpgsql;




-- SELECT create_match_suggestions();


-- SELECT 
--     public.products.*
-- FROM 
--     public.products
-- INNER JOIN 
--     public."userProducts" ON public.products.sku = public."userProducts".sku;


-- Create a function that logs the price change
CREATE OR REPLACE FUNCTION log_product_price_change()
RETURNS TRIGGER AS $$
BEGIN
    -- Check if the price has been changed
    IF NEW.price <> OLD.price THEN
        -- Insert old price into the history table
        INSERT INTO public.store_product_prices_history (store_product_id, price, price_date)
        VALUES (OLD.id, OLD.price, CURRENT_TIMESTAMP);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Attach the trigger to the store_products table
CREATE TRIGGER product_price_change_trigger
BEFORE UPDATE ON public.store_products
FOR EACH ROW
EXECUTE FUNCTION log_product_price_change();
