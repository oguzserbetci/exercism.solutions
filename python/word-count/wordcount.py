def word_count(word):
    dict = {}
    for element in word.split():
        if element in dict:
            dict[element] += 1
        else:
            dict[element] = 1
    return dict