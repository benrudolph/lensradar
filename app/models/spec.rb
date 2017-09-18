class Spec < ApplicationRecord
  belongs_to :lens, foreign_key: 'lens_id'
end
