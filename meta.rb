class Ogawa
  def initialize(name)
    @name = name
  end

  def combination
    (1..8).each do |t|
      if t == 3 || t == 7
        snea
      elsif t == 1
        bass
      else
        send([:bass,:hihat].sample)
      end
    end
  end

  private

  def bass
    print 'ドッ '
  end

  def snea
    print 'タッ '
  end

  def hihat
    print 'ツ '
  end
end

ogawa = Ogawa.new('tetsuya')
ogawa.combination
