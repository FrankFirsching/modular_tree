# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/winapi
    REF boost-1.72.0
    SHA512 de9292bd10d393ed68066c77af335d7799c205761942d567391f2099a089f7ff77c65681156aa4c568d1ec39f1e1556b6816e903a945a81ebb43971840eb3c53
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})