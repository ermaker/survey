class Question
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :title, type: String
  field :description, type: String
  has_many :options
  embeds_many :selections
  accepts_nested_attributes_for :selections
end
