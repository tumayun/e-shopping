require 'spec_helper'

describe 'routing to the products controller' do

  it 'GET / to products#index' do
    expect(get: '/').to route_to(controller: 'products', action: 'index')
  end

  it 'GET /products/1 to products#show' do
    expect(get: '/products/1').to route_to(controller: 'products', action: 'show', id: '1')
  end
end
