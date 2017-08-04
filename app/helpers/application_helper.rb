module ApplicationHelper
  
  def avatar_url(user)
    if user.avatar.present?
      user.avatar + "?type=large"
    else
      default_url = "https://cdn1.iconfinder.com/data/icons/freeline/32/account_friend_human_man_member_person_profile_user_users-512.png"
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png?d=#{CGI.escape(default_url)}"
    end
  end
  
end

