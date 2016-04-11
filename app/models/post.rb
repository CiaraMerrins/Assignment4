class Post < ActiveRecord::Base
belongs_to :admin
belongs_to :pin
end
