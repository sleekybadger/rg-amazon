class Category < ActiveRecord::Base
  has_many :books

  validates :title, presence: true, uniqueness: { case_sensitive: false }

  before_save do
    self.title.capitalize!
  end
end
