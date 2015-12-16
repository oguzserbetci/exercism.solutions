def to_rna(dna):
    translation = {'G': 'C',
                   'C': 'G',
                   'T': 'A',
                   'A': 'U'}
    result = ''
    for letter in dna:
        result += translation[letter]

    return result