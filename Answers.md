Q1) --> i) The relationship between the Product and Product_Category entities is established through a foreign key in the Product entity.
       ii) The category_id field in the Product table serves as a foreign key referencing the primary key id in the Product_Category table.
      iii) Each product can belong to only one category, as indicated by the one-to-many relationship between Product_Category and Product.
       iv) By referencing the id field of the Product_Category table, the category_id field ensures that the value entered corresponds to an existing category.
        v) This relationship allows for categorizing products and enables queries that involve filtering or grouping products based on their categories.
       vi) the category_id field in the Product table links each product to its respective category in the Product_Category table, establishing a relationship between products and their categories.

Q2) --> i) To ensure that each product in the Product table has a valid category assigned to it, we can enforce referential integrity using foreign key constraints.
       ii) Foreign key constraints ensure that the values in the referencing column category_id in Product must match values in the referenced column id in Product_category.
      iii) Any attempt to insert or update a product with an invalid category_id will result in a foreign key constraint violation error.
       iv) Ensure that each product in the Product table has a valid Product_category assigned to it.

Q3) --> Execute Schema.sql file to create the ProductDb database and the following tables: product_category, product_inventory, discount, and product.
