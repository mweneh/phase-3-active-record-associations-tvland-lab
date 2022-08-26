class Network < ActiveRecord::Base
  has_many :shows

  def shows
    self.shows.map {|show|show.name}
  end

  def sorry
     "We're sorry about passing on John Mulaney's pilot"
  end
end
