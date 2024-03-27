CC = cc
CFLAGS = -Wall -Wextra -pedantic -Iinclude -Llib
LDFLAGS = -ldiscord -lcurl

TARGET = bin/TeatimeTales

SOURCES = $(shell find src -type f -name "*.c")

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

