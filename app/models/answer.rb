class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer_setting

  resourcify#rolify
end
