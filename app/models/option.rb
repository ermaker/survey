class Option
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :name
  belongs_to :question
end