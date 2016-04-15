class User < ActiveRecord::Base
  #consider adding a "patron" role, or super_guest, for donations and special treats 
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
