# 10進数の整数を16進数の文字列に変換する
def to_hex(r, g, b)
  # '#'に数字が足されていき,繰り返し処理が完了すると,injectの戻り値となる
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end

end

# 16進数の文字列を10進数の整数に変換する
def to_ints(hex)
  # 引数の文字列から3つの16進数を抜き出す
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]

  # 3つの16進数を配列に入れ,ループを回しながら10進数の整数に変換した値を別の配列に詰め込む
  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end

  # 10進数の整数が入った配列を返す
  return ints

end

# 空の配列を用意し,他の配列をループ処理した結果をそこに入れていく場合,mapに置き換えられることが多い
def to_ints_refactoring(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map(&:hex)

end