class Book
  include Mongoid::Document
  field :title, type: String
  field :year, type: Integer
  embedded_in :author, :inverse_of => :books
end
