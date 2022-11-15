class Enigma
  attr_reader :message,
              :key,
              :date,
              
  def initialize(attributes)
    @message = attributes[:message]
    @key = attributes[:key]
    @date = attributes[:date]
  end

  # methods i need for encryption
  def keys
    { :A => @key.slice(0, 2).join,
      :B => @key.slice(1, 2).join,
      :C => @key.slice(2, 2).join,
      :D => @key.slice(3, 2).join }
  end

  def offsets
    offset = [(@date ** 2)]
    # offset = square.slice(-1, 4)
    { :A => offset.split.slice(-1, 4).first,
      :B => offset.slice(-1, 4),
      :C => offset.slice(-1, 4),
      :D => offset.slice(-1, 4)}
      # missing something but what
      # return the whole squared number...slice isn't working, why?
  end
end

# methods for enigma class
  # def encrypt(message, key, date)

  # end

  # def decrypt(ciphertext, key, date)
    
  # end

  # def crack(ciphertext, date)

  # end
# end

# character set ("a".."z").to_a << " "
# keys 