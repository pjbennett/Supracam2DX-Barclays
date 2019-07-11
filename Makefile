SRC = 2dx.c
TARGET = 2dx

default: $(TARGET)

$(TARGET): 2dx.c
	gcc -Wall -DUSE_SOCKET -o $(TARGET) $(SRC) `pkg-config --cflags --libs gtk+-3.0` -rdynamic -lm -pthread

debug: 2dx.c
	gcc -Wall -DUSE_SOCKET -g -O0 -o $(TARGET) $(SRC) `pkg-config --cflags --libs gtk+-3.0` -rdynamic -lm -pthread

clean:
	rm -f $(TARGET)
