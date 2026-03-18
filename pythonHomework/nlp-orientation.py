for line in open("avatarSpeeches.txt"):
    for word in line.split():
        if word.endswith('ing'):
            print(word)