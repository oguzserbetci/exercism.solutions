import functools as f

def difference(num):
  return square_of_sum(num) - sum_of_squares(num)

def square_of_sum(num):
  return f.reduce(lambda x,y: x+y, list(range(num+1)))**2

def sum_of_squares(num):
  return f.reduce(lambda x,y: x+y, map(lambda x: x**2, list(range(num+1))))
