class Enigma
  attr_reader :message,
              :key,
              :date,
              :ciphertext
  def initialize(attributes)
    @message = attributes[:message]
    @key = attributes[:key]
    @date = attributes[:date]
    @ciphertext = attributes[:ciphertext]
  end

  def keys
    { :A => @key.slice(0, 2),
      :B => @key.slice(1, 2),
      :C => @key.slice(2, 2),
      :D => @key.slice(3, 2) }
  end

  def offsets
    offset = [@date * 2].slice(-1, 4)
    { :A => offset[0],
      :B => offset[1],
      :C => offset[2],
      :D => offset[3] }
      # missing something but what
      # need to seperate numbers 
  end
end
  # def encrypt(message, key, date)

  # end

  # def decrypt(ciphertext, key, date)
    
  # end

  # def crack(ciphertext, date)

  # end
# end

# character set ("a".."z").to_a << " "
# keys 