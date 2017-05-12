
line_prev = None
while True:
    try:
        line_cur = input()
    except EOFError:
        break

    i = line_cur.find("Cuda")
    if i >= 0:
        assert line_prev is not None
        line_cur = line_cur[:i] + "Double" + line_cur[i + 4:]
        line_prev = str(int(line_prev) + 2)

    if line_prev is None:
        print("")
    else:
        print(line_prev)
    line_prev = line_cur

if line_prev is not None:
    print(line_prev)
