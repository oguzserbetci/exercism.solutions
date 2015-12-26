import string

def is_pangram(phrase):
  alphabet = string.ascii_lowercase
  return set(alphabet) <= set(phrase.lower())
