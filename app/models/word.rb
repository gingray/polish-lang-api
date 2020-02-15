class Word < ApplicationRecord
  acts_as_taggable
  has_many :translations, class_name: 'Word', foreign_key: :originator_id
  belongs_to :originator, foreign_key: :originator_id, class_name: 'Word', optional: true
end
