

def fibs(n, x = 1 , y =1)
[1] +   (0...n).collect { x , y = x + y , x ; x } 
end


def fibs_rec(n,x=1,y=1)
  n == 0 ? [x] : [x] + fibs_rec(n-1 , x + y , x )
end

p fibs(8)
p fibs_rec(8)
