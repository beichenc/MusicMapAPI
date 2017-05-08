class User < ApplicationRecord

  # has_many :mapped_songs

  validates_presence_of :username, :email, :birthday, :producttype, :href, :uri, :imageurl, :followers, :visits
end
