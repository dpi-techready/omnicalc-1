class ApplicationController < ActionController::Base
  def blank_square_form
    render({:template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    # params = {"number"=> "42"}

    @num = params.fetch("calculate").to_f
    # @square_of_num = @num * @num
    @square_of_num = @num ** 2

    render({:template => "calculation_templates/calculate_results.html.erb"})
  end
end
