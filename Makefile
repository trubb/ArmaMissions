BUILD_FLAGS = --force
OUTPUT_FOLDER = build/
MISSIONS = $(sort $(filter-out $(OUTPUT_FOLDER), $(dir $(wildcard */))))
PBOS = $(subst /,.pbo,$(MISSIONS))

all: $(PBOS)

clean:
	rm -rf $(OUTPUT_FOLDER)

%.pbo:
	@echo "\033[93mBuilding $(*)\033[0m"
	@mkdir -p $(OUTPUT_FOLDER)
	sqflint -d $(*)
	armake build $(BUILD_FLAGS) $(*) $(OUTPUT_FOLDER)$(@)

.PHONY: all
