class TuitionUser < ApplicationRecord
  belongs_to :user
  belongs_to :tuition
end
