# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ElementsController, type: :controller do
  it 'returns success' do
    get :index
    expect(response.status).to eq(200)
  end

  it 'show in html' do
    get :result, params: { str_arr: '5 5 6 0 1 4', length: '6', mode: 'html' }
    expect(response.content_type).to eq('text/html; charset=utf-8')
  end

  it 'show in xml' do
    get :result, params: { str_arr: '5 5 6 0 1', length: '5', mode: 'xml' }
    expect(response.content_type).to eq('application/xml; charset=utf-8')
  end
end
