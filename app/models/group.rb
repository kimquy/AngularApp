class Group < ActiveRecord::Base
	has_many :lists, :dependent => :destroy
end
