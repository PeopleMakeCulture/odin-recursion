require 'benchmark'

def merge_sort(array)
  middle = array.length / 2
  return merge(merge_sort(array[0...middle]), merge_sort(array[middle..-1])) if array.length> 1
  array
end

def merge(as,bs)
  return as if bs.empty?
  return bs if as.empty?
  return   merge(as[1..-1],bs).unshift as[0] if as[0] <= bs[0]
  return   merge(as,bs[1..-1]).unshift  bs[0] if bs[0] < as[0]
  []
end


def quick_sort(array)
  pivot = array.sample(1)[0]
  return quick_sort( array.find_all {|x| x < pivot }) + [pivot] + quick_sort( array.find_all {|x| x > pivot }) if array.length > 1
  array
end


 
