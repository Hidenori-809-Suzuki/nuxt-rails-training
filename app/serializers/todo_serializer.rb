class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :usdername
  belongs_to :user

  def username
    object.user.name
  end
end
