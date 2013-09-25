class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me
    # attr_accessible :title, :body
    has_and_belongs_to_many :buildings

    def self.from_omniauth(auth_hash)
      where(auth_hash.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.uid = auth_hash.uid
      user.provider = auth_hash.provider
      user.username = auth_hash.info.nickname
      user.oauth_token = auth_hash.credentials.token
      user.oauth_secret = auth_hash.credentials.secret
      user.save
    end
  end


end
