class Pet < ApplicationRecord
  belongs_to :pet_type

  def gender_text
    case self.gender
    when 1 then
      return 'オス'
    when 2 then
      return 'メス'
    when 3 then
      return '不明'
    end
  end
end