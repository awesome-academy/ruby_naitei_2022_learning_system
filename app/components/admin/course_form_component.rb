# frozen_string_literal: true

class Admin::CourseFormComponent < ViewComponent::Base
  def initialize course:, variant: :create
    super
    @course = course
    @variant = variant
  end

  def method
    @variant == :create ? "POST" : "PATCH"
  end
end
