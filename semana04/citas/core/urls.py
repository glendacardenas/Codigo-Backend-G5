from django.urls import URLPattern, path
from .views import PersonasController

urlpatterns = [
    path('personas/', PersonasController.as_view()),
]
