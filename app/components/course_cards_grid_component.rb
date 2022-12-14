# frozen_string_literal: true

class CourseCardsGridComponent < ViewComponent::Base
  include Pagy::Frontend

  def initialize courses:, pagy:
    super
    @courses = courses
    @pagy = pagy
  end
end
