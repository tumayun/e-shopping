require 'spec_helper'

describe 'routing to the admin/products controller' do

  it 'GET /admin to admin/products#index' do
    expect(get: '/admin').to route_to(controller: 'admin/products', action: 'index')
  end

  it 'POST /admin/products to admin/products#create' do
    expect(post: '/admin/products').to route_to(controller: 'admin/products', action: 'create')
  end

  it 'GET /admin/products/new to admin/products#new' do
    expect(get: '/admin/products/new').to route_to(controller: 'admin/products', action: 'new')
  end

  it 'GET /admin/products/1/edit to admin/products#edit' do
    expect(get: '/admin/products/1/edit').to route_to(controller: 'admin/products', action: 'edit', id: '1')
  end

  it 'GET /admin/products/1 to admin/products#show' do
    expect(get: '/admin/products/1').to route_to(controller: 'admin/products', action: 'show', id: '1')
  end

  it 'PATCH /admin/products/1 to admin/products#update' do
    expect(patch: '/admin/products/1').to route_to(controller: 'admin/products', action: 'update', id: '1')
  end

  it 'PUT /admin/products/1 to admin/products#update' do
    expect(put: '/admin/products/1').to route_to(controller: 'admin/products', action: 'update', id: '1')
  end
end
