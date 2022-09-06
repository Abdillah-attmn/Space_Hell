ActiveAdmin.register Game do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :category, :photo_game
  #

  form do |f|
    f.inputs "New Game" do
      f.input :title
      f.input :content
      f.input :category
      f.input :photo_game, as: :file
    end
    f.actions
  end


  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :category]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
