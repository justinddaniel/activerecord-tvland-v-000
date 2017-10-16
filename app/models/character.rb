class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
    if self.name == "Steve Urkel"
      urkel.catchphrase = "Did I do that?"
      urkel.catchphrase
    else "I am not Steve Urkel and I did not do that"
    end
  end
    
end
