
"*****Creating Database per the Schema*****";

CREATE TABLE dish(
  "id" INTEGER,
  "name" TEXT,
  "description" TEXT,
  "menus_appeared" INTEGER,
  "times_appeared" INTEGER,
  "first_appeared" DATETIME,
  "last_appeared" DATETIME,
  "lowest_price" INTEGER,
  "highest_price" INTEGER
);

CREATE TABLE menuitem(
  "id" INTEGER,
  "menu_page_id" INTEGER,
  "price" REAL,
  "high_price" REAL,
  "dish_id" REAL,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "xpos" INTEGER,
  "ypos" INTEGER
);

CREATE TABLE menupage(
  "id" INTEGER,
  "menu_id" INTEGER,
  "page_number" INTEGER,
  "image_id" INTEGER,
  "full_height" INTEGER,
  "full_width" INTEGER,
  "uuid" TEXT
);

CREATE TABLE menu(
  "id" INTEGER,
  "name" TEXT,
  "sponsor" TEXT,
  "event" TEXT,
  "venue" TEXT,
  "place" TEXT,
  "physical_description_type" TEXT,
  "physical_description_additional" TEXT,
  "physical_description 5" TEXT,
  "physical_description 6" TEXT,
  "occasion" TEXT,
  "notes" TEXT,
  "call_number" TEXT,
  "keywords" TEXT,
  "language" TEXT,
  "date_clean" DATETIME,
  "location" TEXT,
  "location_type" TEXT,
  "currency" TEXT,
  "currency_symbol" TEXT,
  "status" TEXT,
  "page_count" INTEGER,
  "dish_count" INTEGER011.3
  
);

sqllite3 ../dish.db

"*****Importing Data*****";

.mode csv
.import final_project/CDish.csv dish
.import final_project/CMenu.csv menu
.import final_project/CMenuItem.csv menuitem
.import final_project/CMenuPage.csv menupage