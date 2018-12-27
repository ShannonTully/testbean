from django.urls import path
from reviews_app.views import review_detail_view, review_list_view

urlpatterns = [
    path('', review_list_view, name='home'),
    path('<int:pk>', review_detail_view, name='review_detail'),
]
