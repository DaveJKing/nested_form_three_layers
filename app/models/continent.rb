class Continent < ActiveRecord::Base
  has_many :countries, dependent: :destroy
  
  accepts_nested_attributes_for :countries, :reject_if => :all_blank, allow_destroy: true
 
 
 def destroy
   # byebug
  begin
    return if @_destroy_callback_already_called
    @_destroy_callback_already_called = true
    run_callbacks(:destroy) { super }
  ensure
    @_destroy_callback_already_called = false
  end
end
  
end
