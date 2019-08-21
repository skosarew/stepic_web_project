from qa.views import test
from django.urls import path


urlpatterns = [
	path('', test),
	path('login/', test),
	path('signup/', test),
	path('question/<int:pk>/', test),
	path('ask/', test),
	path('popular/', test),
	path('new/', test),
]

