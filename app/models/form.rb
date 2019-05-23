class Form < ApplicationRecord
  belongs_to :user
  has_many :questions, dependet: :destroy
  has_many :answers, dependet: :destroy
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, :description, :user, presence: true
  # validates :title, uniqueness: true
end
