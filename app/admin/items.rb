ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :name, :price

  member_action :auto_create_order, method: :patch do
    Order.create!(item_id: resource.id)
  end


 action_item :only => :show do
   link_to 'Buy Item', auto_create_order_admin_item_path, method: :patch
 end

end
