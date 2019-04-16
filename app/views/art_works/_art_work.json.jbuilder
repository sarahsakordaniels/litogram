json.extract! art_work, :id, :title, :style, :description, :year, :wiki, :image_link, :created_at, :updated_at
json.url art_work_url(art_work, format: :json)
