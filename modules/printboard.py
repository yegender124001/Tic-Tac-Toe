from modules.placevalues import top, mid,bot

def printboard():
    for i in top:
        print(i, end=" ")
    print()
    for j in mid:
        print(j, end=" ")
    print()
    for k in bot:
        print(k, end=" ")
    print()