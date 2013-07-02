require 'spec_helper'

describe 'routing to the devise/sessions controller' do

  it 'GET /users/sign_in to devise/sessions#new' do
    expect(get: '/users/sign_in').to route_to(controller: 'devise/sessions', action: 'new')
  end

  it 'POST /users/sign_in to devise/sessions#create' do
    expect(post: '/users/sign_in').to route_to(controller: 'devise/sessions', action: 'create')
  end

  it 'DELETE /users/sign_out to devise/sessions#destroy' do
    expect(delete: '/users/sign_out').to route_to(controller: 'devise/sessions', action: 'destroy')
  end
end
