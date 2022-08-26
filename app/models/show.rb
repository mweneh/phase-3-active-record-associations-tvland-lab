class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def characters
    self.characters.map {|chars|chars.name}
  end

  def network
    self.network
  end

  def actors_list
    self.actors.map {|actor|actor.full_name}
  end
end