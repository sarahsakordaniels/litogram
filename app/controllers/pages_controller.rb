class PagesController < ApplicationController

  def index
    @media_type_number = rand(1..3)
    case @media_type_number
      when 1
        @type = WordOfTheDay
      when 2
        @type = Text
      when 3
        @type = ArtWork
      end

    @media_type_count = @type.all.last.id
    @media_id_number = rand(1..@media_type_count)

    @media = @type.find(@media_id_number)

  #   if @type == Text
  #     #display form = title, author, and content
  #   if @type == WordOfTheDay
  #     #display form = word, definition, origin, example
  #   if @type == ArtWork
  #     #display form = title, style, artist, description
  #
  end



end
