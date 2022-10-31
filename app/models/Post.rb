class Post < ApplicationRecord
  belongs_to :pet

  def status_text
    case self.status
    when 1 then
      return '下書き'
    when 2 then
      return '公開'
    when 3 then
      return '非公開'
    end
  end
end