class Bet < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  belongs_to :opponent, class_name: 'User'

end
