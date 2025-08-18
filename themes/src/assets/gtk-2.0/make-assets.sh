#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Solarized'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#268bd3'
                        ;;
                    -Blue)
                        theme_color='#268bd3'
                        ;;
                    -Green)
                        theme_color='#849900'
                        ;;
                    -Grey)
                        theme_color='#5e6d6e'
                        ;;
                    -Orange)
                        theme_color='#c94c16'
                        ;;
                    -Pink)
                        theme_color='#d23681'
                        ;;
                    -Purple)
                        theme_color='#6d71c4'
                        ;;
                    -Red)
                        theme_color='#db302d'
                        ;;
                    -Teal)
                        theme_color='#29a298'
                        ;;
                    -Yellow)
                        theme_color='#b28500'
                        ;;
                esac

                if [[ "$type" == '-Solarized' ]]; then
                    background_color='#ede7d3'

                    case "$theme" in
                        '')
                            theme_color='#268bd3'
                            ;;
                        -Blue)
                            theme_color='#268bd3'
                            ;;
                        -Green)
                            theme_color='#849900'
                            ;;
                        -Grey)
                            theme_color='#5e6d6e'
                            ;;
                        -Orange)
                            theme_color='#c94c16'
                            ;;
                        -Pink)
                            theme_color='#d23681'
                            ;;
                        -Purple)
                            theme_color='#6d71c4'
                            ;;
                        -Red)
                            theme_color='#db302d'
                            ;;
                        -Teal)
                            theme_color='#29a298'
                            ;;
                        -Yellow)
                            theme_color='#b28500'
                            ;;
                    esac
                fi
            else
                case "$theme" in
                    '')
                        theme_color='#1a6397'
                        ;;
                    -Blue)
                        theme_color='#1a6397'
                        ;;
                    -Green)
                        theme_color='#586600'
                        ;;
                    -Grey)
                        theme_color='#e1d7b7'
                        ;;
                    -Orange)
                        theme_color='#a13c10'
                        ;;
                    -Pink)
                        theme_color='#af2668'
                        ;;
                    -Purple)
                        theme_color='#484eb6'
                        ;;
                    -Red)
                        theme_color='#b7211f'
                        ;;
                    -Teal)
                        theme_color='#1a6265'
                        ;;
                    -Yellow)
                        theme_color='#664c00'
                        ;;
                esac

                if [[ "$type" == '-Solarized' ]]; then
                    background_color='#002b36'

                    case "$theme" in
                        '')
                            theme_color='#1a6397'
                            ;;
                        -Blue)
                            theme_color='#1a6397'
                            ;;
                        -Green)
                            theme_color='#586600'
                            ;;
                        -Grey)
                            theme_color='#e1d7b7'
                            ;;
                        -Orange)
                            theme_color='#a13c10'
                            ;;
                        -Pink)
                            theme_color='#af2668'
                            ;;
                        -Purple)
                            theme_color='#484eb6'
                            ;;
                        -Red)
                            theme_color='#b7211f'
                            ;;
                        -Teal)
                            theme_color='#1a6265'
                            ;;
                        -Yellow)
                            theme_color='#664c00'
                            ;;
                    esac
                fi
            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                # cp -r "assets-common${color}.svg" "assets-common${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#268bd3/${theme_color}/g" "assets${theme}${color}${type}.svg"
                    # sed -i "s/#fdf5e2/${background_color}/g" "assets-common${color}${type}.svg"
                else
                    sed -i "s/#1a6397/${theme_color}/g" "assets${theme}${color}${type}.svg"
                    # sed -i "s/#001419/${background_color}/g" "assets-common${color}${type}.svg"
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
