class User < ApplicationRecord
  validates :name, presence: true, length: {minimum:2, maximum:100}, format: { with: /\A[a-zA-Z," "]*\z/ ,message: "only allows letters" }
  validates :age, presence: true, numericality: {in: 8..120, message: "between 8 to 120 only"}
  validates :gender, presence: true
end
