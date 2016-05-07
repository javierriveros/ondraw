$("#user-avatar .circle").css 
"background": "url(<%= @user.avatar.url(:medium) %>)" 
"background-size": "cover"
$("#user-cover").css 
"background-image": "url(<%=@user.cover.url(:medium) %>)"
"background-size": "cover" 
"background-position": "center"