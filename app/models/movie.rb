class Movie < ApplicationRecord
    has_and_belongs_to_many :actors
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments

    validates :title, :year, presence: true
end
