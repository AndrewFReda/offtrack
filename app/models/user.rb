class User < ActiveRecord::Base
  has_many :proposed_bets, { class_name: 'Bet', foreign_key: 'creator_id'}
  has_many :recieved_bets, { class_name: 'Bet', foreign_key: 'opponent_id'}

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider         = auth.provider
      user.uid              = auth.uid
      user.name             = auth.info.name
      user.oauth_token      = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
