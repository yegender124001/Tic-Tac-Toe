import random
top = ["-", "-", "-"]
mid = ["-", "-", "-"]
bot = ["-", "-", "-"]



def placevalues(person, mode):
    if person == 1:
        top[0] = mode
    elif person == 2:
        top[1] = mode
    elif person == 3:
        top[2] = mode
    elif person == 4:
        mid[0] = mode
    elif person == 5:
        mid[1] = mode
    elif person == 6:
        mid[2] = mode
    elif person == 7:
        bot[0] = mode
    elif person == 8:
        bot[1] = mode
    elif person == 9:
        bot[2] = mode
    else:
        print("Invalid input. Please try again.")

