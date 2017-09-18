class Lens < ApplicationRecord
  has_many :specs, primary_key: 'lens_id'
end
