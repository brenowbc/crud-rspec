class Product < ActiveRecord::Base
	validates_length_of :name, minimum: 5, maximum: 50, allow_blank: false
	validates_uniqueness_of :name
end
