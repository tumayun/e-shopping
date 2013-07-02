require 'spec_helper'

describe 'routing to the registrations controller' do

  it 'GET /users/cancel to registrations#cancel' do
    expect(get: '/users/cancel').to route_to(controller: 'registrations', action: 'cancel')
  end

  it 'POST /users to registrations#create' do
    expect(post: '/users').to route_to(controller: 'registrations', action: 'create')
  end

  it 'GET /users/sign_up to registrations#new' do
    expect(get: '/users/sign_up').to route_to(controller: 'registrations', action: 'new')
  end

  it 'GET /users/edit to registrations#edit' do
    expect(get: '/users/edit').to route_to(controller: 'registrations', action: 'edit')
  end

  it 'PATCH /users to registrations#update' do
    expect(patch: '/users').to route_to(controller: 'registrations', action: 'update')
  end

  it 'PUT /users to registrations#update' do
    expect(put: '/users').to route_to(controller: 'registrations', action: 'update')
  end

  it 'DELETE /users to registrations#destroy' do
    expect(delete: '/users').to route_to(controller: 'registrations', action: 'destroy')
  end
end
