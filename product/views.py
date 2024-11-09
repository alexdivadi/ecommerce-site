from django.views.generic import ListView
from django.contrib.postgres.search import SearchVector

from product.models import Product, ProductCategory


class HomePageView(ListView):
    """
    Class-based view that displays a list of products on the homepage.
    """
    template_name = "product/index.html"
    paginate_by = 20

    def get_context_data(self, **kwargs):
        """
        Returns the context needed to render the template.
        """
        context = super().get_context_data(**kwargs)
        context["categories"] = ProductCategory.categories.all()
        context["selected_cat"] = int(self.request.GET.get('filter', "0"))
        
        return context
    
    def get_queryset(self):
        """
        Returns the filtered list of products to display.
        """
        search_text = self.request.GET.get('search')
        cat = self.request.GET.get('filter', "0")
        query_set = Product.objects

        if cat != "0":
            query_set = query_set.filter(category=cat)
        
        if search_text:
            query_set = query_set.annotate(search=SearchVector("name", "description"),).filter(search=search_text)

        return query_set.all().order_by("name")