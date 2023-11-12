# frozen_string_literal: true

require 'aasm'

# Job
class Job
  include AASM

  aasm do
    state :sleeping, initial: true
    state :running, :cleaning

    event :run do
      transitions from: :sleeping, to: :running
      before do
        puts '[callback] Before run'
      end
      after do
        puts '[callback] After run'
      end
    end

    event :clean do
      transitions from: :running, to: :cleaning
    end

    event :sleep do
      transitions from: %i[running cleaning], to: :sleeping
    end
  end
end
