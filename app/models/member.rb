class Member < ApplicationRecord
  def name_with_country
    "#{name}, #{value}"
  end
end
