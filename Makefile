TARGET=trigger

SOURCES=./starter_codes/import_registers.c \
        ./starter_codes/enable_pwm_clock.c \
	./starter_codes/standard_input.c \
        trigger.c

OBJECTS=$(patsubst %.c,%.o,$(SOURCES))

all: $(OBJECTS)
	gcc $(OBJECTS) -o $(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)

%.o:%.c
	gcc -c $< -o $@
