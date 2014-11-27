class Selection
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  belongs_to :user
  has_and_belongs_to_many :options, inverse_of: nil
  embedded_in :question, inverse_of: :selections
end