make_gtkrc() {
    local dest="${1}"
    local name="${2}"
    local theme="${3}"
    local color="${4}"
    local size="${5}"
    local ctype="${6}"
    local window="${7}"

    [[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
    [[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

    local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
    local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

    if [[ "${color}" != '-Dark' ]]; then
        case "$theme" in
            '')
                theme_color='#1a6397'
                ;;
            -Green)
                theme_color='#586600'
                ;;
            -Grey)
                theme_color='#5e6d6e'
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

        if [[ "$ctype" == '-Solarized' ]]; then
            case "$theme" in
                '')
                    theme_color='#1a6397'
                    ;;
                -Green)
                    theme_color='#586600'
                    ;;
                -Grey)
                    theme_color='#5e6d6e'
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

    else
        case "$theme" in
            '')
                theme_color='#268bd3'
                ;;
            -Green)
                theme_color='#849900'
                ;;
            -Grey)
                theme_color='#e1d7b7'
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

        if [[ "$ctype" == '-Solarized' ]]; then
            case "$theme" in
                '')
                    theme_color='#268bd3'
                    ;;
                -Green)
                    theme_color='#849900'
                    ;;
                -Grey)
                    theme_color='#e1d7b7'
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

    fi

    if [[ "$blackness" == 'true' ]]; then
        case "$ctype" in
            '')
                background_light='#fdf5e2'
                background_dark='#001014'
                background_darker='#001010'
                background_alt='#002029'
                titlebar_light='#fdf5e2'
                titlebar_dark='#001014'
                ;;
            -Solarized)
                background_light='#fdf5e2'
                background_dark='#001014'
                background_darker='#001010'
                background_alt='#002029'
                titlebar_light='#fdf5e2'
                titlebar_dark='#001014'
                ;;
        esac
    else
        case "$ctype" in
            '')
                background_light='#fdf5e2'
                background_dark='#001419'
                background_darker='#001014'
                background_alt='#002029'
                titlebar_light='#fdf5e2'
                titlebar_dark='#001419'
                ;;
            -Solarized)
                background_light='#fdf5e2'
                background_dark='#002b36'
                background_darker='#002029'
                background_alt='#002c38'
                titlebar_light='#fdf5e2'
                titlebar_dark='#002b36'
                ;;
        esac
    fi

    mkdir -p "${THEME_DIR}/gtk-2.0"

    cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#fdf5e2/${background_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#001419/${background_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#002029/${background_alt}/g" "${THEME_DIR}/gtk-2.0/gtkrc"

    if [[ "${color}" == '-Dark' ]]; then
        sed -i "s/#268bd3/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#001014/${background_darker}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#001419/${titlebar_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    else
        sed -i "s/#1a6397/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#fdf5e2/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    fi
}
