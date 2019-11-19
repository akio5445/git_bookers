class Book < ApplicationRecord
  validates :title, presence: true,  presence: {message: "can't be blank"}
  validates :body, presence: true,  presence: {message: "can't be blank"}
end


