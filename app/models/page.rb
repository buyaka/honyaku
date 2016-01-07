class Page < ActiveRecord::Base
  belongs_to :book
  mount_uploader :image, PageUploader
end
