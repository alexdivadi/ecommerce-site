from django.urls import path

from product import views

urlpatterns = [
    path('', view=views.HomePageView.as_view()),
]
