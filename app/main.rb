# frozen_string_literal: true

require_relative 'job'

job = Job.new

puts "job.sleeping? # => #{job.sleeping?}" # => true
puts "job.may_run?  # => #{job.may_run?}" # => true
job.run
puts "job.running?  # => #{job.running?}" # => true
puts "job.sleeping? # => #{job.sleeping?}" # => false
puts "job.may_run?  # => #{job.may_run?}" # => false
# job.run           # => raises AASM::InvalidTransition
