# frozen_string_literal: true

# helper
module ElementsHelper
  URL_SERV = 'http://localhost:3000/?format=xml'
  XSLT_PATH = 'public/output.xslt'

  def check_data
    if /[^\d^\s]/.match(params[:str_arr]) then redirect_to home_path, notice: "Sequence isn't correct"
    else
      arr = params[:str_arr].split.map!(&:to_i)
      redirect_to home_path, notice: "Length isn't correct" if arr.length != params[:length].to_i
    end
    flash[:notice] = 'Mode must be selected' if params[:mode].nil?
  end

  def set_values
    @str = params[:str_arr]
    @length = params[:length].to_i
    @mode = params[:mode]
  end

  def show_result
    case @mode
    when 'xml'
      render xml: @resp_xml
    when 'html'
      render inline: xml_transform
    end
  end

  def xml_transform
    xslt = Nokogiri::XSLT(File.read(XSLT_PATH))
    xslt.transform(Nokogiri::XML(@resp_xml))
  end
end
