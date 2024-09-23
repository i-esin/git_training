l = []
i = 0

while len(l) < 20:
    i += 1
    if i%2 == 0:
        l.append(i)

print(l)

l = [i for i in range(2, 41, 2)]
print(l)
