#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Solarized'; do
        case "$theme" in
            '')
                theme_color_dark='#268bd3'
                theme_color_light='#1a6397'
                ;;
            -Blue)
                theme_color_dark='#268bd3'
                theme_color_light='#1a6397'
                ;;
            -Green)
                theme_color_dark='#849900'
                theme_color_light='#586600'
                ;;
            -Grey)
                theme_color_dark='#e1d7b7'
                theme_color_light='#5e6d6e'
                ;;
            -Orange)
                theme_color_dark='#c94c16'
                theme_color_light='#a13c10'
                ;;
            -Pink)
                theme_color_dark='#d23681'
                theme_color_light='#af2668'
                ;;
            -Purple)
                theme_color_dark='#6d71c4'
                theme_color_light='#484eb6'
                ;;
            -Red)
                theme_color_dark='#db302d'
                theme_color_light='#b7211f'
                ;;
            -Teal)
                theme_color_dark='#29a298'
                theme_color_light='#1a6265'
                ;;
            -Yellow)
                theme_color_dark='#b28500'
                theme_color_light='#664c00'
                ;;
        esac

        if [[ "$type" == '-Solarized' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#268bd3'
                    theme_color_light='#1a6397'
                    ;;
                -Blue)
                    theme_color_dark='#268bd3'
                    theme_color_light='#1a6397'
                    ;;
                -Green)
                    theme_color_dark='#849900'
                    theme_color_light='#586600'
                    ;;
                -Grey)
                    theme_color_dark='#e1d7b7'
                    theme_color_light='#5e6d6e'
                    ;;
                -Orange)
                    theme_color_dark='#c94c16'
                    theme_color_light='#a13c10'
                    ;;
                -Pink)
                    theme_color_dark='#d23681'
                    theme_color_light='#af2668'
                    ;;
                -Purple)
                    theme_color_dark='#6d71c4'
                    theme_color_light='#484eb6'
                    ;;
                -Red)
                    theme_color_dark='#db302d'
                    theme_color_light='#b7211f'
                    ;;
                -Teal)
                    theme_color_dark='#29a298'
                    theme_color_light='#1a6265'
                    ;;
                -Yellow)
                    theme_color_dark='#b28500'
                    theme_color_light='#664c00'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            cp -rf "theme" "theme${theme}${type}"
            sed -i "s/#268bd3/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
            sed -i "s/#1a6397/${theme_color_light}/g" "theme${theme}${type}"/*.svg
        elif [[ "$theme" != '' ]]; then
            cp -rf "theme" "theme${theme}"
            sed -i "s/#268bd3/${theme_color_dark}/g" "theme${theme}"/*.svg
            sed -i "s/#1a6397/${theme_color_light}/g" "theme${theme}"/*.svg
        fi
    done
done

echo -e "DONE!"
