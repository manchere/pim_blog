module ApplicationHelper
  def white_logo

  end

  def omit_sign_in_register_buttons_on(*args)
    args.each do |p|
      p 
    end
  end

  def current_user_profile_image(default_image)
    current_user ? current_user.displayed_image(default_image) : default_image
  end
end
