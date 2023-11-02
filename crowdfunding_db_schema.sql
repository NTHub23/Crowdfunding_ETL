CREATE TABLE Category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL, 
    category VARCHAR(25) NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL, 
    subcategory VARCHAR(20) NOT NULL
);
CREATE TABLE contact (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL

);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(10, 2) NOT NULL,
    pledged NUMERIC(10, 2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(20) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);








SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contact;
