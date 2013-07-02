require 'spec_helper'

describe 'routing to the devise/confirmations controller' do

  it 'POST /users/confirmation to devise/confirmations#create' do
    expect(post: '/users/confirmation').to route_to(controller: 'devise/confirmations', action: 'create')
  end

  it 'GET /users/confirmation/new to devise/confirmations#new' do
    expect(get: '/users/confirmation/new').to route_to(controller: 'devise/confirmations', action: 'new')
  end

  it 'GET /users/confirmation to devise/confirmations#show' do
    expect(get: '/users/confirmation').to route_to(controller: 'devise/confirmations', action: 'show')
  end
end
