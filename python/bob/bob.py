#
# Skeleton file for the Python "Bob" exercise.
#
def hey(what):
  what = what.rstrip()
  if what.isspace() or what == '':
    return 'Fine. Be that way!'
  elif what.endswith('!') or what.isupper():
    return 'Whoa, chill out!'
  elif what.endswith('?'):
    return 'Sure.'
  else:
    return 'Whatever.'


