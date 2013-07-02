require 'spec_helper'

describe 'routing to the devise/passwords controller' do

  it 'POST /users/password to devise/passwords#create' do
    expect(post: '/users/password').to route_to(controller: 'devise/passwords', action: 'create')
  end

  it 'GET /users/password/new to devise/passwords#new' do
    expect(get: '/users/password/new').to route_to(controller: 'devise/passwords', action: 'new')
  end

  it 'GET /users/password/edit to devise/passwords#edit' do
    expect(get: '/users/password/edit').to route_to(controller: 'devise/passwords', action: 'edit')
  end

  it 'PATCH /users/password to devise/passwords#update' do
    expect(patch: '/users/password').to route_to(controller: 'devise/passwords', action: 'update')
  end

  it 'PUT /users/password to devise/passwords#update' do
    expect(put: '/users/password').to route_to(controller: 'devise/passwords', action: 'update')
  end
end
