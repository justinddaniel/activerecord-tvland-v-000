class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    character_roll = []
    self.characters.each do |c|
      character_roll << "#{c.name} - #{c.show.name}"
    end
    character_roll
  end
end
