CC := sdcc

bin_name := ksylitoli
BUILD_DIR := ./build/

#CH552 xRAM size 1kB = 0x400
C_FLAGS := -V -mmcs51 --model-small --xram-size 0x400 --xram-loc 0x0000 --code-size 0xF000 -o $(BUILD_DIR)

all: main
	$(CC) ./build/main.rel -o ./build/$(bin_name).ihx
	gobjcopy -I ihex -O binary $(join $(BUILD_DIR),$(bin_name).ihx) $(join $(BUILD_DIR),$(bin_name).bin)

main: ./src/main.c 
	$(CC) -c $(C_FLAGS) $^ -I./inc -o $(BUILD_DIR)

clean:
	rm ./build/*

burn:
	python3 -m ch55xtool -f $(join $(BUILD_DIR),$(bin_name).bin)

