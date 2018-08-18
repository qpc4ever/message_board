module UsersHelper
  def avatar_for(user, options = { size: 260 })
    size = options[:size]
    if user.avatar.attached?
        image_tag current_user.avatar.variant(combine_options: {thumbnail: "50x50^", gravity: "center", extent: "50x50"}), style: 'border: 1px solid #0a8fd5; border-radius:50%;'
    else
        image_tag 'default.png', width: size, style: 'border: 1px solid #0a8fd5; border-radius:50%;'
    end
  end
end