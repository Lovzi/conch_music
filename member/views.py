from django.shortcuts import render

# Create your views here.

app_name = 'member'
def member(request):
    return render(request, 'member/member.html', {'user': request.session})