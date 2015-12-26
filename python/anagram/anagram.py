import string

def detect_anagrams(phrase, anagrams):
  r = {}
  for l in phrase:
    for a in anagrams:
      if l in a:
        a.replace(l,'',1)
      if len(a) == 0:
