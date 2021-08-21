class Ticket
  # fareとstamped_atが外部から取得できるようにする
  attr_reader :fare, :stamped_at

  # 初期値として, 切符の購入額を受け取りインスタンス変数に格納
  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    # Gate.enterを実行した際のnameを@stamped_atに保存
    @stamped_at = name
  end

end