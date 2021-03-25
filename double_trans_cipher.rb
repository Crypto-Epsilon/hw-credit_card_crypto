class Array
  def unshuffle(random:)
    matrix_order = (0...length).to_a.shuffle!(random: random)
    sort_by.with_index{|_, k| matrix_order[k]}
  end
end


module DoubleTranspositionCipher
  def self.encrypt(document, key)
    # TODO: FILL THIS IN!
    ## Suggested steps for double transposition cipher
    # 1. find number of rows/cols such that matrix is almost square
    # 2. break plaintext into evenly sized blocks
    # 3. sort rows in predictibly random way using key as seed
    # 4. sort columns of each row in predictibly random way
    # 5. return joined cyphertext
    array_matrix = document.split("").each_slice(key).to_a
    row_shuffle = array_matrix.shuffle(random: Random.new(key))
    joined_string = row_shuffle.join('')
    return joined_string
  end

  def self.decrypt(ciphertext, key)
    # TODO: FILL THIS IN!
    array_matrix_decry = document.split("").each_slice(key).to_a
    row_shuffle_decry = array_matrix_decry.unshuffle(random: Random.new(key))
    joined_string_decry = row_shuffle_decry.join('')
    return joined_string_decry
  end
end

