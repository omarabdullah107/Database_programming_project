-- Creating indices to optimize the database schema in general:-

-- actor table:-
CREATE INDEX idx_actor_id on actor USING BTREE (actor_id);
CREATE INDEX idx_actor_last_name on actor USING BTREE (last_name);
CREATE INDEX idx_actor_first_name on actor USING BTREE (first_name);

-- payment:
-- using those unique keys because they arent initialized as primary keys they dont have the red mark in this table.
CREATE INDEX idx_payment_id on payment USING BTREE (payment_id);
CREATE INDEX idx_pcustomer_id on payment USING BTREE (customer_id);
CREATE INDEX idx_pstaff_id on payment USING BTREE (staff_id);
CREATE INDEX idx_prental_id on payment USING BTREE (staff_id);
CREATE INDEX idx_pay_amount_id on payment USING BTREE (amount);

-- language table:-
CREATE INDEX idx_language_id on language USING BTREE (language_id);
CREATE INDEX idx_language_name on language USING HASH (name);

-- store table:-
CREATE INDEX idx_store_id on store USING BTREE (store_id);
CREATE INDEX idx_f_store_address_id on store USING BTREE (address_id);
CREATE INDEX idx_smanager_staff_id on store USING BTREE (manager_staff_id);


-- address table:-
CREATE INDEX idx_address_id on address USING BTREE (address_id);
CREATE INDEX idx_postal_code on address USING BRIN (postal_code) WITH (pages_per_range = 128);
CREATE INDEX idx_f_address_city_id on address USING BTREE (city_id);
CREATE INDEX idx_address_district on address USING BTREE (district);

-- film_actor table:-
CREATE INDEX idx_f_actor_id on film_actor USING BTREE (actor_id);
CREATE INDEX idx_f_filmactor_film_id on film_actor USING BTREE (film_id);
CREATE INDEX idx_filmt_title on film USING BTREE (title);
CREATE INDEX idx_film_year on film USING HASH (release_year);
CREATE INDEX idx_film_rating on film USING BTREE (rating);

-- country table:-
CREATE INDEX idx_country_id on country USING BTREE (country_id);
CREATE INDEX idx_country_name on country USING HASH (country);

-- city table:-
CREATE INDEX idx_city_id on city USING BTREE (city_id);
CREATE INDEX idx_city_name on city USING HASH (city);
CREATE INDEX idx_f_city_country_id on city USING BTREE (country_id);

-- film table:-
CREATE INDEX idx_film_id on film USING BTREE (film_id);
CREATE INDEX idx_f_film_language_id on film USING BTREE (language_id);

-- film_category table:-
CREATE INDEX idx_f_fcat_film_id on film_category USING BTREE (film_id);
CREATE INDEX idx_f_fcat_category_id on film_category USING BTREE (category_id);

-- category tab:-
CREATE INDEX idx_category_id on category USING BTREE (category_id);
CREATE INDEX idx_category_name on category USING HASH (name);

-- inventory table:-
CREATE INDEX idx_inventory_id on inventory USING BTREE (inventory_id);
CREATE INDEX idx_f_inv_film_id on inventory USING BTREE (film_id);
CREATE INDEX idx_f_inv_store_id on inventory USING BTREE (store_id);

-- staff table:-
CREATE INDEX idx_staff_id on staff USING BTREE (staff_id);
CREATE INDEX idx_f_staff_address_id on staff USING BTREE (address_id);
CREATE INDEX idx_f_staff_store_id on staff USING BTREE (store_id);
CREATE INDEX idx_staff_last_name on staff USING BTREE (last_name);
CREATE INDEX idx_staff_first_name on staff USING BTREE (first_name);
CREATE INDEX idx_staff_username on staff USING BTREE (username);

-- customer table
CREATE INDEX idx_customer_id on customer USING BTREE (customer_id);
CREATE INDEX idx_f_cus_store_id on customer USING BTREE (store_id);
CREATE INDEX idx_f_cus_address_id on customer USING BTREE (address_id);
CREATE INDEX idx_customer_last_name on customer USING BTREE (last_name);
CREATE INDEX idx_customer_first_name on customer USING BTREE (first_name);

-- rental table:-
CREATE INDEX idx_rental_id on rental USING BTREE (rental_id);
CREATE INDEX idx_f_ren_inventory_id on rental USING BTREE (inventory_id);
CREATE INDEX idx_f_ren_customer_id on rental USING BTREE (customer_id);
CREATE INDEX idx_f_ren_staff_id on rental USING BTREE (staff_id);



-- some were on keys i didnt know they were indexed by default so i added the indices in the adjustment file next to this one.

-- ---------------------------------------------------------------------------
-- Query_1:
CREATE INDEX idx_cat on category USING BTREE (category_id);
CREATE INDEX idx_film_cat on film_category USING BTREE (film_id, category_id);
CREATE INDEX idx_film on film USING BTREE (film_id);
CREATE INDEX idx_film_title on film USING HASH (title);
CREATE INDEX idx_cat_name on category USING HASH (name);


-- Query_2:
CREATE INDEX idx_ac_id on actor USING BTREE (actor_id);
CREATE INDEX idx_fiac_id on film_actor USING BTREE (actor_id);
CREATE INDEX idx_ac_fi on actor USING BTREE (first_name);
CREATE INDEX idx_ac_la on actor USING BTREE (last_name);


-- Query_3:
CREATE INDEX idx_ac3_fi on actor USING BTREE (first_name);
CREATE INDEX idx_ac3_la on actor USING BTREE (last_name);



--Query_4:
CREATE INDEX idx_cus_active on customer USING BTREE (active);


-- Query_5:
CREATE INDEX idx_customer_act on customer USING HASH (active);


-- Query_6:
CREATE INDEX idx_rental_cusid on rental USING BTREE (customer_id)


-- Query_7:
CREATE INDEX idx_cus_lastname on customer USING BTREE (last_name)


-- Query_8:
CREATE INDEX idx_pay_am on payment USING BTREE (amount);


-- Query_9:
CREATE INDEX idx_cat_nname on category USING BTREE (name);
CREATE INDEX idx_f_t on film USING BTREE (title);



-- Query_10:
CREATE INDEX idx_film_des on film USING BTREE (description);



-- Query_11:
CREATE INDEX cat_name on category USING BTREE (name);


-- Query_12:
CREATE INDEX act_lastname on actor USING BTREE (last_name);



-- Query_13:
CREATE INDEX f_t on film USING BTREE (title);



-- Query_14:
CREATE INDEX ACT_FIRST ON actor USING BTREE (first_name);
CREATE INDEX ACT_LAST ON actor USING BTREE (last_name);


-- Query_15:
CREATE INDEX cuss_acti on customer USING HASH (active)


-- Query_16:
CREATE INDEX add_dis on address USING BTREE (district);


-- Query_17:
CREATE INDEX lan_id on language USING BTREE (language_id);
CREATE INDEX fi_ti on film USING BTREE (title);


-- all the indexing commands of the project are here
