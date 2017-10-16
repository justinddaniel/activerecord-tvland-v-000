class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
    say_that_thing_you_say
  end

  def say_that_thing_you_say
    if self.name == "Steve Urkel"
      "Did I do that?"
    else
      "I am not Steve Urkel and I did not do that"
    end
  end

end
