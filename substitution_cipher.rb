module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caesar cipher
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caesar cipher
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
      array_asccii_shuffle = document.bytes.map{|x| x + key} #Transform the string to an array of ASCII and shuffle with the key to the right
      array_shuffle_string = array_asccii_shuffle.collect{|x| x.chr}.join('').to_s  #transfrom the array of shuffle ascii to string 
      return array_shuffle_string
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
      array_decrypt_shuffle = document.bytes.map{|x| x - key} #Transform the string to an array of ASCII and shuffle with the key to the left
      array_decrypt_string = array_decrypt_shuffle.collect{|x| x.chr}.join('').to_s  #transfrom the array of shuffle ascii to string 
      return array_shuffle_string
    end
  end
end
