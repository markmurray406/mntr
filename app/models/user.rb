class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :microposts1
  has_many :microposts2
end
