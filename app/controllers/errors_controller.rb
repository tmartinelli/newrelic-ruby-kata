class ErrorsController < ApplicationController
  def index
  end

  def ajax
    value = some_internal_logic(params['p'].to_i)
    render :text => value
  end

  def some_internal_logic(x)
    return x < 1 ? 0 : 1 / x
  end
end
