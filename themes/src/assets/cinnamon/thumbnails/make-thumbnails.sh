#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Blue' '-Grey'; do
	for type in '' '-Solarized'; do
		case "$theme" in
		'')
			theme_color_dark='#268bd3'
			theme_color_light='#1a6397'
			;;
		-Purple)
			theme_color_dark='#6d71c4'
			theme_color_light='#484eb6'
			;;
		-Pink)
			theme_color_dark='#d23681'
			theme_color_light='#af2668'
			;;
		-Red)
			theme_color_dark='#db302d'
			theme_color_light='#b7211f'
			;;
		-Orange)
			theme_color_dark='#c94c16'
			theme_color_light='#a13c10'
			;;
		-Yellow)
			theme_color_dark='#b28500'
			theme_color_light='#664c00'
			;;
		-Green)
			theme_color_dark='#849900'
			theme_color_light='#586600'
			;;
		-Blue)
			theme_color_dark='#268bd3'
			theme_color_light='#1a6397'
			;;
		-Grey)
			theme_color_dark='#001419'
			theme_color_light='#fdf5e2'
			;;
		esac

		if [[ "$type" == '-Solarized' ]]; then
			case "$theme" in
			'')
				theme_color_dark='#268bd3'
				theme_color_light='#1a6397'
				;;
			-Purple)
				theme_color_dark='#6d71c4'
				theme_color_light='#484eb6'
				;;
			-Pink)
				theme_color_dark='#d23681'
				theme_color_light='#af2668'
				;;
			-Red)
				theme_color_dark='#db302d'
				theme_color_light='#b7211f'
				;;
			-Orange)
				theme_color_dark='#c94c16'
				theme_color_light='#a13c10'
				;;
			-Yellow)
				theme_color_dark='#b28500'
				theme_color_light='#664c00'
				;;
			-Green)
				theme_color_dark='#849900'
				theme_color_light='#586600'
				;;
			-Blue)
				theme_color_dark='#268bd3'
				theme_color_light='#1a6397'
				;;
			-Grey)
				theme_color_dark='#002b36'
				theme_color_light='#ede7d3'
				;;
			esac
		fi

		if [[ "$type" != '' ]]; then
			rm -rf "thumbnail${theme}${type}.svg"
			cp -rf "thumbnail.svg" "thumbnail${theme}${type}.svg"
			sed -i "s/#268bd3/${theme_color_dark}/g" "thumbnail${theme}${type}.svg"
			sed -i "s/#1a6397/${theme_color_light}/g" "thumbnail${theme}${type}.svg"
			sed -i "s/#fdf5e2/${panel_light}/g" "thumbnail${theme}${type}.svg"
			sed -i "s/#001419/${panel_dark}/g" "thumbnail${theme}${type}.svg"
			sed -i "s/thumbnail/thumbnail${theme}${type}/g" "thumbnail${theme}${type}.svg"
		elif [[ "$theme" != '' ]]; then
			rm -rf "thumbnail${theme}.svg"
			cp -rf "thumbnail.svg" "thumbnail${theme}.svg"
			sed -i "s/#268bd3/${theme_color_dark}/g" "thumbnail${theme}.svg"
			sed -i "s/#006a83/${theme_color_light}/g" "thumbnail${theme}.svg"
			sed -i "s/thumbnail/thumbnail${theme}/g" "thumbnail${theme}.svg"
		fi
	done
done

echo -e "DONE!"
