class PhotoController < ApplicationController
  def comment
    update = Comment.new
    update.photo_id = params.fetch("photo_id")
    update.author_id = params.fetch("author_id")
    update.body = params.fetch("comment_add")
    update.save
    redirect_to("/photos/#{update.photo_id}")
  end
  def destroy
    pic_id = params.fetch("photo_id")
    match = Photo.where({ :id => pic_id})
    @del_photo = match.at(0)
    @del_photo.destroy

    redirect_to("/photos")
  end
  def update
      the_id = params.fetch("the_photo")
    match = Photo.where({:id => the_id})
    photo_id = match.at(0)

      photo_id.image = params.fetch("image_update")
      photo_id.caption = params.fetch("caption_update")
      photo_id.save

    redirect_to("/photos/#{photo_id.id}")
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
