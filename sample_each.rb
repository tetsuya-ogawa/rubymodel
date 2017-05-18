module Sample
  def sample_each
    if block_given?
      index = 0
      while self[index] do
        yield self[index]
        index += 1
      end
    elsif
      puts 'ブロックわたせ'
    end

  end
end

include Sample

['せ' ,'い', 'こ', 'う'].sample_each do |t|
  puts t + 'うえ〜い'
end

['だめ', 'だめ', 'だめ', 'だめ'].sample_each
