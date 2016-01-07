class Book < ActiveRecord::Base
  belongs_to :user
  has_many :pages
  accepts_nested_attributes_for :pages
  mount_uploader :cover, PageUploader
end
