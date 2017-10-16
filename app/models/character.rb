class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
    if self.name == "Steve Urkel"
      "Did I do that?"
    else "I am not Steve Urkel and I did not do that"
    end
  end

end
