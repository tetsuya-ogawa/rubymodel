module SampleEach
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
