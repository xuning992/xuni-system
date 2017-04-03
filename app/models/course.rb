class Course < ActiveRecord::Base
    has_many :votes, dependent: :destroy
end
