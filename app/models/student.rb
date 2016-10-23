class Student < ActiveRecord::Base
	after_initialize :init

	def init
		self.active = false if self.active.nil? && self.has_attribute?(:active)
	end

  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active
  	self.active = !self.active
  	save
  end
end