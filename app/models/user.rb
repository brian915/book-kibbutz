class User < ActiveRecord::Base
  enum role: [:reader,:admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :reader
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
end
