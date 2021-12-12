install: extender
	@if [ $(shell id -u) -ne 0 ]; then \
		echo "You need to run as root"; \
		exit 1; \
	else \
		echo "Installing Extender ... "; \
		cp extender /usr/bin/ ; \
		cp extender.desktop /usr/share/applications/ ; \
		mv extender.png /usr/share/icons/hicolor/128x128/apps/ ;\
		mv extender.svg /usr/share/icons/hicolor/scalable/apps/ ;\
	fi

uninstall: 
	@if [ $(shell id -u) -ne 0 ]; then \
		echo "You need to run as root"; \
		exit 1; \
	else \
		echo "Uninstalling Extender ... "; \
		rm -f /usr/bin/extender; \
		rm -f /usr/share/application/extender.desktop; \
		rm -f /usr/share/icons/hicolor/128x128/apps/extender.png ; \
		rm -f /usr/share/icons/hicolor/scalable/apps/extender.svg ;\
	fi
