module ApplicationHelper
  def resource
    @resource ||= User.new
  end
  
  def resource_name
    :user
  end
  
  def resource_class
    User
  end
  
  def circle_img(url,size=100)
    content_tag :div, nil, class: "circle cover", style: "width: #{size}px; height: #{size}px;background-image: url(#{url})"
  end
end
