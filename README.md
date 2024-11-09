# E-commerce Home Page
Django application to display and filter a list of products on a fake e-commerce website.

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
<iframe src="https://www.loom.com/embed/953870e031a34d1d811db042366704c4?sid=7793f11e-f6fe-4400-ac38-53473bfd0bb2" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
</div>

## Tech Stack
- **Backend**: Django
- **Database**: PostgreSQL
- **Frontend**: HTML, CSS, Bootstrap

## Schema
There are two models used in this app, **Product** and **ProductCategory**.
### Table "product_product"

|   Column    |          Type          | Collation | Nullable |             Default             |
|-------------|------------------------|-----------|----------|----------------------------------
| id          | bigint                 |           | not null | generated by default as identity |
| name        | character varying(50)  |           | not null | |
| description | character varying(300) |           | not null | |
| price       | numeric(8,2)           |           | not null | |
| image       | character varying(200) |           | not null | |
| category_id | bigint                 |           | not null | |

Indexes:
- **product_product_pk** PRIMARY KEY, btree (id)
- **product_product_category_id** btree (category_id)

Foreign-key constraints:
- **product_product_category_id_fk_product** FOREIGN KEY (category_id) REFERENCES product_productcategory(id) DEFERRABLE INITIALLY DEFERRED


### Table "product_productcategory"

|   Column   |         Type          | Collation | Nullable |             Default              |
|------------|-----------------------|-----------|----------|----------------------------------|
| id         | bigint                |           | not null | generated by default as identity |
| name       | character varying(50) |           | not null | |
| sort_order | integer               |           | not null | |

Indexes:
- **product_productcategory_pk** PRIMARY KEY, btree (id)

## Setup
### Requirements
1. Set up virtualenv
2. Install the required packages:
```console 
$ pip install -r requirements.txt
```

### Secret Key
Generate a SECRET_KEY to set in the `.env` file with the following command:
```console
$ python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
```

### Create Database
This project uses PostgreSQL to store data.
Steps to set up database:
1. Create a database named `ecommerce` 
2. Create a user to manage the database
3. Run the following command to enable the user to modify the database
```sql 
ALTER DATABASE ecommerce OWNER TO [user];
```
4. Update the `.env` file with your database user information
5. Migrate the database
```console
$ python manage.py migrate
```

### Populate Database
After creating an `ecommerce` database, run the following SQL script in your PostgreSQL database to insert the mock data:
```console
$ psql -U [username] -d ecommerce -a -f load_data.sql
```

Should an error arise and the referenced ID's in "product" do not match up with the generated ID's in "productcategory", run the following commands to reset the category table:
```sql
BEGIN;
SELECT setval(pg_get_serial_sequence('"product_productcategory"','id'), coalesce(max("id"), 1), max("id") IS NOT null) FROM "product_productcategory";
COMMIT;
```

## Future Improvements
- **Category Filters:** Change UI of filters, i.e. make a drop-down select or make filters apply upon click.
- **Sorting:** Allow the user to sort by price (asc/desc) or other categories.
- **Product Detail:** Add a view and navigation to show details about a product.
- **REST API:** Use DRF to add serializers and endpoints for product and categories.