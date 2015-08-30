class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter

  # validates_acceptance_of :tos_accepted, :allow_nil => false, :message => "Please accept the terms of service!", :on => :create
  # validates :terms_of_service, :acceptance => { accept: "1" }
  # validates :terms_of_service, :acceptance => true
  # validates_inclusion_of :terms_of_service, :in => [true]
end
