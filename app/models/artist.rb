class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  include Concerns::Slugifiable
  extend Concerns::SlugFindable

end
