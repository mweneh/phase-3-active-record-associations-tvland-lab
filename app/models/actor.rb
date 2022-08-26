class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

#   def characters
#     self.characters.map{|chars|chars.name}
#   end

  def shows
    self.shows.map{|show|show.name}
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |chars|
        chars.name - self.shows.find(chars.show_id)
    end
  end
end