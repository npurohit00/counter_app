class CountersController < ApplicationController
  before_action :set_counter

  def show
  end

  def increment
    @counter.increment!(:value)
    redirect_to root_path
  end

  def decrement
    @counter.decrement!(:value)
    redirect_to root_path
  end

  private

  def set_counter
    @counter = Counter.first_or_create(value: 0)
  end
end
