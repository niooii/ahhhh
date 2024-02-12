# Install script for directory: /home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2-2.0.so.0.2600.4"
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0.2600.4"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2-2.0.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/SDL2Config.cmake"
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_assert.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_atomic.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_audio.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_bits.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_blendmode.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_clipboard.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_copying.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_cpuinfo.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_egl.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_endian.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_error.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_events.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_filesystem.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_gamecontroller.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_gesture.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_guid.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_haptic.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_hidapi.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_hints.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_joystick.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_keyboard.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_keycode.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_loadso.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_locale.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_log.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_main.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_messagebox.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_metal.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_misc.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_mouse.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_mutex.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_name.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengl.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengl_glext.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles2.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles2_gl2.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles2_gl2ext.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles2_gl2platform.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_opengles2_khrplatform.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_pixels.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_platform.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_power.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_quit.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_rect.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_render.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_rwops.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_scancode.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_sensor.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_shape.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_stdinc.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_surface.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_system.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_syswm.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_assert.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_common.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_compare.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_crc32.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_font.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_fuzzer.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_harness.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_images.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_log.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_md5.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_memory.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_test_random.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_thread.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_timer.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_touch.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_types.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_version.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_video.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/SDL_vulkan.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/begin_code.h"
    "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/include/close_code.h"
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/include/SDL_revision.h"
    "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/include-config-release/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /usr/bin/cmake -E create_symlink
              "libSDL2-2.0.so" "libSDL2.so"
              WORKING_DIRECTORY "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/libSDL2.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/niooi/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.36.0/SDL/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/niooi/Projects/Rust/schoolwork/CHESSAIAHAHAHA/target/debug/build/sdl2-sys-7f2a7ea12e3a10bd/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
