#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Blue' '-Grey'; do
	for color in '' '-Dark'; do
		for type in '' '-Solarized'; do
			if [[ "$color" == '' ]]; then
				case "$theme" in
				'')
					theme_color='#29a298'
					;;
				-Purple)
					theme_color='#6d71c4'
					;;
				-Pink)
					theme_color='#d23681'
					;;
				-Red)
					theme_color='#db302d'
					;;
				-Orange)
					theme_color='#c94c16'
					;;
				-Yellow)
					theme_color='#b28500'
					;;
				-Green)
					theme_color='#849900'
					;;
				-Blue)
					theme_color='#268bd3'
					;;
				-Grey)
					theme_color='#001419'
					;;
				esac

				if [[ "$type" == '-Solarized' ]]; then
					background_color='#fdf5e2'

					case "$theme" in
					'')
						theme_color='#1a6397'
						;;
					-Purple)
						theme_color='#484eb6'
						;;
					-Pink)
						theme_color='#af2668'
						;;
					-Red)
						theme_color='#b7211f'
						;;
					-Orange)
						theme_color='#a13c10'
						;;
					-Yellow)
						theme_color='#664c00'
						;;
					-Green)
						theme_color='#586600'
						;;
					-Blue)
						theme_color='#1a6397'
						;;
					-Grey)
						theme_color='#002b36'
						;;
					esac
				fi
			else
				case "$theme" in
				'')
					theme_color='#29a298'
					;;
				-Purple)
					theme_color='#6d71c4'
					;;
				-Pink)
					theme_color='#d23681'
					;;
				-Red)
					theme_color='#db302d'
					;;
				-Orange)
					theme_color='#c94c16'
					;;
				-Yellow)
					theme_color='#b28500'
					;;
				-Green)
					theme_color='#849900'
					;;
				-Blue)
					theme_color='#268bd3'
					;;
				-Grey)
					theme_color='#fdf5e2'
					;;
				esac

				if [[ "$type" == '-Solarized' ]]; then
					background_color='#002b36'

					case "$theme" in
					'')
						theme_color='#1a6397'
						;;
					-Purple)
						theme_color='#484eb6'
						;;
					-Pink)
						theme_color='#af2668'
						;;
					-Red)
						theme_color='#b7211f'
						;;
					-Orange)
						theme_color='#a13c10'
						;;
					-Yellow)
						theme_color='#664c00'
						;;
					-Green)
						theme_color='#586600'
						;;
					-Blue)
						theme_color='#1a6397'
						;;
					-Grey)
						theme_color='#ede7d3'
						;;
					esac
				fi
			fi

			if [[ "$type" != '' ]]; then
				cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
				if [[ "$color" == '' ]]; then
					sed -i "s/#268bd3/${theme_color}/g" "assets${theme}${color}${type}.svg"
				else
					sed -i "s/#1a6397/${theme_color}/g" "assets${theme}${color}${type}.svg"
				fi
			elif [[ "$theme" != '' ]]; then
				cp -r "assets${color}.svg" "assets${theme}${color}.svg"
				if [[ "$color" == '' ]]; then
					sed -i "s/#268bd3/${theme_color}/g" "assets${theme}${color}.svg"
				else
					sed -i "s/#1a6397/${theme_color}/g" "assets${theme}${color}.svg"
				fi
			fi

		done
	done
done

echo -e "DONE!"
