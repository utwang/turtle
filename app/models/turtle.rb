class Turtle < ActiveRecord::Base
  include AASM

  aasm do
    state :sleeping, initial: true
    state :walking
    state :overturning
    state :head_pulling

    event :walk do
      transitions from: :sleeping, to: :walking
    end

    event :sleep do
      transitions from: :head_pulling, to: :sleeping
    end

    event :push do
      transitions from: :walking, to: :overturning
    end

    event :hide do
      transitions from: :walking, to: :head_pulling
    end

    event :show do
      transitions from: :head_pulling, to: :walking
    end
  end
end
