/****************************************************************************************/
/*Integrity constraint checks on the data
/*Erroneous records are reported
/****************************************************************************************/

-- IC Check for dish table

select * from dish where id is NULL;

select * from dish
where menus_appeared is NULL or times_appeared is NULL;

select * from dish
where cast(first_appeared as year) > cast(last_appeared as year) and last_appeared <> '0';

select * from dish where lowest_price > highest_price;


-- IC Check for menu table


select * from menu where id is NULL;

select * from menu where sponsor_clean is 'NULL' or '';

select * from menu where page_count is 'NULL' or '';


-- IC Check for menupage table


select * from menupage where id is NULL;

select * from menupage where page_number  = '0';

select * from menupage where page_number  is NULL;

select * from menupage where created_at > updated_at;


-- IC Check for menuitem table


select * from menuitem where id is NULL;

select * from menuitem where updated_at < created_at;

select * from menuitem where xpos < 0 and xpos > 1;

select * from menuitem where ypos < 0 and xpos > 1;