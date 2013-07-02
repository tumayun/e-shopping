class User < ActiveRecord::Base
  paginates_per 10

  # Include default devise modules. Others available are:
  # :token_authenticatable
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :name, format: { with: /\A\w+\z/, message: I18n.t('.allow_word', scope: 'errors.messages') }, length: { in: 3..20 }, presence: true, uniqueness: { case_sensitive: false }
end
