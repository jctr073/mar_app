class Author
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String
  field :dob, type: Date
  embeds_many :books
end
