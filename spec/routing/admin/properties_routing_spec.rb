require 'spec_helper'

describe 'routing to the admin/properties controller' do

  it 'GET /admin/properties to admin/properties#index' do
    expect(get: '/admin/properties').to route_to(controller: 'admin/properties', action: 'index')
  end

  it 'POST /admin/properties to admin/properties#create' do
    expect(post: '/admin/properties').to route_to(controller: 'admin/properties', action: 'create')
  end

  it 'GET /admin/properties/new to admin/properties#new' do
    expect(get: '/admin/properties/new').to route_to(controller: 'admin/properties', action: 'new')
  end

  it 'GET /admin/properties/1/edit to admin/properties#edit' do
    expect(get: '/admin/properties/1/edit').to route_to(controller: 'admin/properties', action: 'edit', id: '1')
  end

  it 'GET /admin/properties/1 to admin/properties#show' do
    expect(get: '/admin/properties/1').to route_to(controller: 'admin/properties', action: 'show', id: '1')
  end

  it 'PATCH /admin/properties/1 to admin/properties#update' do
    expect(patch: '/admin/properties/1').to route_to(controller: 'admin/properties', action: 'update', id: '1')
  end

  it 'PUT /admin/properties/1 to admin/properties#update' do
    expect(put: '/admin/properties/1').to route_to(controller: 'admin/properties', action: 'update', id: '1')
  end
end
