# == Schema Information
# Schema version: 20110219234945
#
# Table name: questions
#
#  id            :integer         not null, primary key
#  question_text :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Question < ActiveRecord::Base
  has_many :invites
end
