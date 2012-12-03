class Ninja < ActiveRecord::Base
  #this lets the program know about decrypting and encrypting
  has_secure_password 

end
