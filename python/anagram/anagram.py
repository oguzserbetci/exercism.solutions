import string

def detect_anagrams(phrase, anagrams):
    return [a for a in anagrams if sorted(a.lower()) == sorted(phrase.lower()) and a.lower() != phrase.lower()]
