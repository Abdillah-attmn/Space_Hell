ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :email
    column :firstname
    column :lastname
    column :nickname
    column :created_at
    column :admin
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  form do |f|
    f.inputs "Identity" do
      f.input :email
      f.input :password
      f.input :nickname
      f.input :firstname
      f.input :lastname
      f.input :photo_avatar, as: :file
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :firstname, :lastname, :nickname, :email, :password, :admin
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :firstname, :lastname, :nickname, :admin, :avatar
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :firstname, :lastname, :nickname, :admin, :avatar]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
