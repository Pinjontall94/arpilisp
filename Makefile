PROGRAM = arpilisp
SOURCES = arpilisp.s
CC = arm-linux-gnu-gcc
CFLAGS = -nostdlib
EMULATOR = qemu-arm

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean
clean: $(PROGRAM)
	rm -v $^

.PHONY: run
run:
	$(EMULATOR) $(PROGRAM)
