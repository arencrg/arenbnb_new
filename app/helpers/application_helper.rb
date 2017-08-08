module ApplicationHelper
  
  def avatar_url(user)
    if user.avatar.present?
      user.avatar + "?type=large"
    else
      default_url = "https://image.freepik.com/free-icon/user-image-with-black-background_318-34564.jpg"
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png?d=#{CGI.escape(default_url)}"
    end
  end
  
end

