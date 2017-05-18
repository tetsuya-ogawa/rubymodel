require './modules/SampleEach' # moduleのファイルをloadして
include SampleEach             # ここでmoduleを読み込む

['せ' ,'い', 'こ', 'う'].sample_each do |t|
  puts t + 'うえ〜い'
end

['だめ', 'だめ', 'だめ', 'だめ'].sample_each
