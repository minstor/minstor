SOURCE_DIR=$(CURDIR)
BUILD_DIR=$(CURDIR)/build
PROJECT_NAME=minstor

.PHONY: build
build:
	cmake -B '$(BUILD_DIR)' -S '$(SOURCE_DIR)' -G 'Ninja'
	cmake --build build
	@echo "========== Build completed =========="

.PHONY: run
run: build
	@'$(BUILD_DIR)/src/$(PROJECT_NAME)'
