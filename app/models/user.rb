class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :reports
  has_many :likes
  has_many :liked_reports, through: :likes, source: :report
  def already_liked?(report)
    self.likes.exists?(report_id: report.id)
  end
end