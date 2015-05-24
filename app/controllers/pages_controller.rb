class PagesController < ApplicationController
  # include Mongoid::Document
  def index
    @author = Author.find_by(name: "John Irving")
    @books = @author.books
  end
end
