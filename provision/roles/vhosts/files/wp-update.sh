#!/usr/bin/env bash

wp @all core update
wp @all plugin update --all
wp @all theme update --all
wp @all core language update
wp @all core verify-checksums

exit 0
