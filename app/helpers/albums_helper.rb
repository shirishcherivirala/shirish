module AlbumsHelper
  def publisher_dropdown_options
    Publisher.select(:id, :name)
  end
end
