module UsersHelper

  def users_posts(user)
    user.posts.count > 0
  end

  def users_comments(user)
    user.posts.count > 0
  end

  def users_favorites(user)
    user.favorites.count > 0
  end

end
