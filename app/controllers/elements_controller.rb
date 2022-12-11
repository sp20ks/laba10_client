# frozen_string_literal: true

# class of controller
class ElementsController < ApplicationController
  include ElementsHelper

  URL_SERV = 'http://127.0.0.1:3000/serv/result.xml'

  before_action :check_data, only: :result
  before_action :set_values, only: :result

  def index; end

  def result
    url_with_params = URL_SERV + "?length=#{@length}&str_arr=#{@str.split.join('+')}"
    @resp_xml = URI.open(url_with_params)
    show_result
  end
end
