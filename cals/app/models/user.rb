class User < ActiveRecord::Base
 # attr_accessible :name, :password, :password_confirmation
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :name
  validates_uniqueness_of :name
  
  def self.authenticate(name, password)
    user = find_by_name(name)# gets the name from column name i.e. find_by_columnname
    puts "find_by"
    puts user
    puts "user_name"
    puts user.name
    puts "password_hash"
    puts user.password_hash    
    puts "password_salt"
    puts user.password_salt    
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
      puts "user && user.password_hash"
      puts user && user.password_hash
      puts "BCrypt::Engine.hash_secret(password, user.password_salt)"
      puts BCrypt::Engine.hash_secret(password, user.password_salt)
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      puts "self.password_salt"
      puts self.password_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      puts "self.password_hash"
      puts self.password_hash
    end
  end
end
