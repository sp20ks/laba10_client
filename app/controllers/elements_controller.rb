# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

# class of controller
class ElementsController < ApplicationController
  include ElementsHelper
  before_action :check_data, only: :result
  before_action :set_values, only: :result
  URL_SERV = 'http://localhost:3000/?format=xml'
  def index; end

  def result
    url_with_params = URL_SERV + "&length=#{@length}&str_arr=#{@str.split.join('+')}"
    server_response = URI.open(url_with_params)
    render xml: server_response
  end
end
