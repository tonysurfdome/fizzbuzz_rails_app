class UserFavorite < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user, foreign_key: :user_id
end


