#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "android_splash_screen"
    "animations"
    "code_sharing/client"
    "code_sharing/server"
    "code_sharing/shared"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    # TODO(justinmc): To be enabled when its PR hits the master channel.
    # https://github.com/flutter/flutter/pull/107193
    # "experimental/context_menus"
    "experimental/federated_plugin/federated_plugin"
    "experimental/varfont_shader_puzzle"
    "experimental/web_dashboard"
    # TODO(DomesticMouse): Needs to be re-formatted for Flutter beta
    # "experimental/linting_tool"
    "flutter_maps_firestore"
    # TODO(domesticmouse): 'errorColor' is deprecated and shouldn't be used. 
    # "form_app"
    "game_template"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    "jsonexample"
    "material_3_demo"
    "navigation_and_routing"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    # TODO(DomesticMouse): https://github.com/flutter/samples/issues/1443
    # "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web/samples_index"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
