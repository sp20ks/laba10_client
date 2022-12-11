# frozen_string_literal: true

# helper
module ElementsHelper
  def check_data
    if /[^\d^\s]/.match(params[:str_arr]) then redirect_to home_path, notice: "Sequence isn't correct"
    else
      arr = params[:str_arr].split.map!(&:to_i)
      redirect_to home_path, notice: "Length isn't correct" if arr.length != params[:length].to_i
    end
     flash[:notice] = 'The mode must be selected' if params[:mode].nil?
  end

  def set_values
    @str = params[:str_arr]
    @length = params[:length].to_i
    @mode = params[:mode]
  end
end
