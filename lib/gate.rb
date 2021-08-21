class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # 初期値として, 駅の名前を受け取りインスタンス変数に格納
  def initialize(name)
    @name = name
  end

  def enter(ticket)
  # 引数として渡された切符に自分の駅名を保存する
  ticket.stamp(@name)
  end

  def exit(ticket)
    # 適切な運賃と切符の購入金額を比較し、足りているかを戻り値として返す
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)

    # 区間の長さを取得し、適切な運賃を取得
    distance = to - from
    FARES[distance - 1]
  end

end
