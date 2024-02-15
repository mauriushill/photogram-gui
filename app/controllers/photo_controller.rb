class PhotoController < ApplicationController
  def update
    
    redirect_to("/photos/#{}")
  end


  def show
    the_id = params.fetch("a_photo")
    matching_photo = Photo.where({ :id => the_id })
    @the_photo = matching_photo.at(0)
    render ({ :template => "photo_templates/show"})
  end

  def insert
    n = Photo.new
    n.image = params.fetch("pic_url")
    n.caption = params.fetch("caption")
    n.owner_id = params.fetch("owner")
    n.save
    redirect_to("/photos/#{n.owner_id}")
  end

  def list
    @list_of_photos = Photo.all.order({ :image => :asc })
  render ({ :template => "photo_templates/index"})
  end
end
