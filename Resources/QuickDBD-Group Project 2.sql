-- Create the "Contacts" table
CREATE TABLE "Contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY ("contact_id")
);

-- Create the "Category" table
CREATE TABLE "Category" (
    "category_id" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY ("category_id")
);

-- Create the "Subcategory" table
CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(255) NOT NULL,
    "subcategory" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY ("subcategory_id")
);
-- Create the "Campaign" table
CREATE TABLE "Campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(255) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "currency" VARCHAR(255) NOT NULL,
    "launched_date" TIMESTAMP NOT NULL,
    "end_date" TIMESTAMP NOT NULL,
    "category_id" VARCHAR(255) NOT NULL,
    "subcategory_id" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY ("contact_id") REFERENCES "Contacts" ("contact_id"),
    CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY ("category_id") REFERENCES "Category" ("category_id"),
    CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY ("subcategory_id") REFERENCES "Subcategory" ("subcategory_id")
);