class Person < ActiveRecord::Base
  validates :last_name, presence: true

  validates :first_name, presence: true, if: ->(instance) { instance.title.blank? }
  validates :title, presence: true, if: ->(instance) { instance.first_name.blank? }

end
