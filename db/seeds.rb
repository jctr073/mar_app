# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.delete_all
au = Author.new
au.name = "John Irving"
au.desc = "John Winslow Irving, is an American novelist and Academy Award-winning screenwriter. Irving achieved critical and popular acclaim after the international success of The World According to Garp in 1978."
au.dob = "05/2/1942"
au.save

bks = [
    {title: "A Prayer for Owen Meany", year: 1989},
    {title: "The Fourth Hand", year: 2001},
    {title: "Widow for One Year", year: 1998},
    {title: "Last Night in Twisted River", year: 2009}

]

bks.each do |bk|
  book = au.books.new
  book.title = bk[:title]
  book.year  = bk[:year]
  book.save
end