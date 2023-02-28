class AuthorPostSerializer < ActiveModel::Serializer
  # control what you can see in author's posts 
  # custom serializer 
  attributes :title, :short_content 
  has_many :tags 

  def short_content 
    # byebug
    "#{object.content[0..39]}..."
  end


end
