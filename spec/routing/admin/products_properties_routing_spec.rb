require 'spec_helper'

describe 'routing to the admin/products_properties controller' do

  it 'DELETE /admin/products_properties/1 to admin/products_properties#destroy' do
    expect(delete: '/admin/products_properties/1').to route_to(controller: 'admin/products_properties', action: 'destroy', id: '1')
  end
end
