require 'spec_helper'

describe 'routing to the admin/categories controller' do

  it 'GET /admin/categories/1/properties to admin/categories#properties' do
    expect(get: '/admin/categories/1/properties').to route_to(controller: 'admin/categories', action: 'properties', id: '1')
  end

  it 'GET /admin/categories to admin/categories#index' do
    expect(get: '/admin/categories').to route_to(controller: 'admin/categories', action: 'index')
  end

  it 'POST /admin/categories to admin/categories#create' do
    expect(post: '/admin/categories').to route_to(controller: 'admin/categories', action: 'create')
  end

  it 'GET /admin/categories/new to admin/categories#new' do
    expect(get: '/admin/categories/new').to route_to(controller: 'admin/categories', action: 'new')
  end

  it 'GET /admin/categories/1/edit to admin/categories#edit' do
    expect(get: '/admin/categories/1/edit').to route_to(controller: 'admin/categories', action: 'edit', id: '1')
  end

  it 'GET /admin/categories/1 to admin/categories#show' do
    expect(get: '/admin/categories/1').to route_to(controller: 'admin/categories', action: 'show', id: '1')
  end

  it 'PATCH /admin/categories/1 to admin/categories#update' do
    expect(patch: '/admin/categories/1').to route_to(controller: 'admin/categories', action: 'update', id: '1')
  end

  it 'PUT /admin/categories/1 to admin/categories#update' do
    expect(put: '/admin/categories/1').to route_to(controller: 'admin/categories', action: 'update', id: '1')
  end
end
