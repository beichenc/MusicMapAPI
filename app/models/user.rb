class User < ApplicationRecord

  # has_many :mapped_songs

  validates_presence_of :username, :displayname, :email, :producttype, :href, :uri, :imageurl, :followers, :visits
end
