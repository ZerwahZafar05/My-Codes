from django.urls import path
from rest_framework.authtoken.views import obtain_auth_token
from rest_framework_simplejwt import views as jwt_views

from . import views


urlpatterns = [
    path('hello', views.HelloView.as_view()),
    path('login/', jwt_views.TokenObtainPairView.as_view(), name='api_token_auth'),  # <-- And here
    path('login/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),

]