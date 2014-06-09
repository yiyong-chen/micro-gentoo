include $(TOP)/config.mk
#include config.mk

KERNEL_DIR = gentoo-kernel-$(KERNEL_STRONG_VERSION)

all: $(KERNEL_DIR)/~done

$(KERNEL_DIR)/~done:
	rm -rf $(KERNEL_DIR)
	mkdir -p $(KERNEL_DIR)
	cd $(KERNEL_DIR) && mkdir -p lib/modules && cd lib/modules && ln -s /lib/modules/$(KERNEL_STRONG_VERSION) $(KERNEL_STRONG_VERSION)
	touch $(KERNEL_DIR)/~done

clean:
	rm -rf $(KERNEL_DIR)

