BUILD_DIR ?= build

all: build_cmake

build_cmake:
	@mkdir -p $(BUILD_DIR)
	@cmake -B $(BUILD_DIR) -S .
	@cmake --build $(BUILD_DIR)

clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all build_cmake clean
