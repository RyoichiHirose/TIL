def sort_asc(z)
  array=z
  array_empty=[]
  y=array.size #配列のサイズを代入
  
  y.times do #(配列のサイズ)回繰り返す
    x=array.min #arrayの最小値を取得
    array.delete(x) #arrayの最小値を削除
    array_empty.push(x) #配列の最後に値を追加
  end

  p array_empty #最後にarray_emptyを表示
end

sort_asc([10, 8, 3, 5, 2, 4, 11, 18, 20, 33])