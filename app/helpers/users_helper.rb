module UsersHelper
  def checking_presence(attribute, attribute_name)
    !attribute.blank? ? attribute : "Please provide #{attribute_name}"
  end
end
