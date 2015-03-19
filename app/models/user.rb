class User
  include Mongoid::Document

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable, :trackable

  ## Database authenticatable
  field :email,              type: String, default: ""

  validates :email, presence: true, uniqueness: true

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  def self.serialize_into_session(record)
    [record.id.to_s, record.authenticatable_salt]
  end
end
