.PHONY: build_default
switch_default:
	sudo nixos-rebuild switch --flake .

.PHONY: tp-p15v
tp-p15v:
	sudo nixos-rebuild switch --flake .#tp-p15v
