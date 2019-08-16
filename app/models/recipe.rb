class Recipe < ApplicationRecord
   mount_uploader :photo, PhotoUploader
   has_many :ingredients
   has_many :directions

   accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
   accepts_nested_attributes_for :directions, allow_destroy: true, reject_if: proc { |att| att['step'].blank? }

   validates :title, :description, :photo, presence: true


end
