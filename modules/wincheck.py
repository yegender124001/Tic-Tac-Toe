from modules.placevalues import top, mid, bot
# from main import usermode, pcmode

win = [0]

# def usorpc(person):
#     if person == usermode:
#         return print("You won")
#     elif person == pcmode:
#         return print("PC wins")

def checklinematch(person):
    global win
    if top[0] == top[1] == top[2] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif mid[0] == mid[1] == mid[2] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif bot[0] == bot[1] == bot[2] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif top[0] == mid[0] == bot[0] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif top[1] == mid[1] == bot[1] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif top[2] == mid[2] == bot[2] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif top[0] == mid[1] == bot[2] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)
    elif top[2] == mid[1] == bot[0] == person:
        # usorpc(person)
        print(f"{person} wins!")
        return win.append(1)