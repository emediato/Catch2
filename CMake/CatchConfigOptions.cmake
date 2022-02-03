
#              Copyright Catch2 Authors
# Distributed under the Boost Software License, Version 1.0.
#   (See accompanying file LICENSE_1_0.txt or copy at
#        https://www.boost.org/LICENSE_1_0.txt)

# SPDX-License-Identifier: BSL-1.0

##
# This file contains options that are materialized into the Catch2
# compiled library.
#
# For detailed docs look into docs/configuration.md

# TODO: Handle value-macros

macro(AddOverridableConfigOption OptionBaseName)
  option(CATCH_CONFIG_${OptionBaseName} "Read docs/configuration.md for details" OFF)
  option(CATCH_CONFIG_NO_${OptionBaseName} "Read docs/configuration.md for details" OFF)
endmacro()

macro(AddConfigOption OptionBaseName)
  option(CATCH_CONFIG_${OptionBaseName} "Read docs/configuration.md for details" OFF)
endmacro()

set(_OverridableOptions
  "ANDROID_LOGWRITE"
  "CPP11_TO_STRING"
  "CPP17_BYTE"
  "CPP17_OPTIONAL"
  "CPP17_STRING_VIEW"
  "CPP17_UNCAUGHT_EXCEPTIONS"
  "CPP17_VARIANT"
  "DISABLE_EXCEPTIONS"
  "ENABLE_ALL_STRINGMAKERS"
  "ENABLE_OPTIONAL_STRINGMAKER"
  "ENABLE_PAIR_STRINGMAKER"
  "ENABLE_TUPLE_STRINGMAKER"
  "ENABLE_VARIANT_STRINGMAKER"
  "EXPERIMENTAL_REDIRECT"
  "GLOBAL_NEXTAFTER"
  "POSIX_SIGNALS"
  "USE_ASYNC"
  "WCHAR"
  "WINDOWS_CRTDBG"
  "WINDOWS_SEH"
)

foreach(OptionName ${_OverridableOptions})
  AddOverridableConfigOption(${OptionName})
endforeach()

set(_OtherConfigOptions
  "COLOUR_ANSI"
  "COLOUR_NONE"
  "COLOUR_WINDOWS"
  "FAST_COMPILE"
  "NOSTDOUT"
  "NO_NOMINMAX"
  "NO_WIN32_LEAN_AND_MEAN"
)


foreach(OptionName ${_OtherConfigOptions})
  AddConfigOption(${OptionName})
endforeach()

# TODO:
#    CATCH_CONFIG_DEFAULT_REPORTER
#    CATCH_CONFIG_CONSOLE_WIDTH = x // where x is a number
