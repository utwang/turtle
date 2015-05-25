class Shell < ActiveRecord::Base
  has_paper_trail

  belongs_to :turtle
end
