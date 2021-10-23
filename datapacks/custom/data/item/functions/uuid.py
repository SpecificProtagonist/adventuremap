from random import randint;

def get():
    return "UUID:[I;{},{},{},{}]".format(\
        randint(-2**31,2**31),\
        randint(-2**31,2**31),\
        randint(-2**31,2**31),\
        randint(-2**31,2**31))

if __name__ == "__main__":
	for _ in range(10):
		print(get())
