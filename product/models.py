from django.db import models


class ProductCategoryManager(models.Manager):
    def get_queryset(self):
        """Return the default queryset sorted by sort_order"""
        return super().get_queryset().order_by("sort_order")

class ProductCategory(models.Model):
    """
    Represents a category to which a product belongs.

    Attributes:
        name (str): The name of the category.
        sort_order (int): An integer that determines the order in which categories are displayed. Lower values indicate higher priority.
        categories (ProductCategoryManager): A queryset that returns all the objects in sorted order
    """
    
    name = models.CharField(max_length=50)
    sort_order = models.IntegerField(default=0)
    categories = ProductCategoryManager()

class Product(models.Model):
    """
    Represents a product in the database.

    Attributes:
        category (ProductCategory): A ForeignKey relationship with a ProductCategory.
        name (str): The name of the product.
        description (str): A brief description of the product.
        price (decimal): A decimal representation of the price.
        image (url): A link to the product image.
    """
    category = models.ForeignKey(to=ProductCategory, on_delete=models.PROTECT)
    name = models.CharField(max_length=50)
    description = models.CharField(max_length=300)
    price = models.DecimalField(max_digits=8, decimal_places=2)
    image = models.URLField()
