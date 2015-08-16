class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter

  # validates_acceptance_of :tos_accepted, :allow_nil => false, :message => "Please accept the terms of service!", :on => :create
  # validates :terms_of_service, :acceptance => { accept: "true" }
  # validates :terms_of_service, :acceptance => true
end
