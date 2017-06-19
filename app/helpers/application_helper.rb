module ApplicationHelper
  def current_user?(user)
    current_user.id == user.id
  end

  def image_for(user)
    if user.image
      image_tag "/user_images/#{user.image}", class: "profile_img"
    else
      image_tag "wanko.png", class: "profile_img"
    end
  end
end
