class Character < ActiveRecord::Base
  belongs_to :actors
  belongs_to :show

  def actor(name)
    self.characters.find_by(name)
  end

  def show(id)
    self.shows.find(id)
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphase}"
  end
end