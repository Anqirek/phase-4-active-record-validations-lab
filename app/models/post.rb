class Post < ApplicationRecord
validates :title, presence: true
validates :content, length: { minimum: 250 }
validates :summary, length: { maximum: 250 }
validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
validate :must_have_title

def must_have_title
    if title.match?("True Facts")
       title != "True Facts"
    end
  end
end
