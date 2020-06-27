class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
after_create :send_welcome_email
after_create :send_notify_email

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
private

  def send_welcome_email
    UserMailer.welcome(self).deliver_later
  end

  def send_notify_email
    UserMailer.notify(self).deliver_later
  end

end


