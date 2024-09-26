function link_to(lib)
   links (lib)
   includedirs ("./vendor/"..lib.."/include")
   libdirs ("./vendor/"..lib.."/lib" )
end



workspace "ComponentFramework"
   configurations { "Debug", "Release" }
   architecture "x86"

project "ComponentFramework"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"
   includedirs { "ComponentFramework/**" }
   includedirs {"C:/GameDev/MathLibrary/include"}
   includedirs {"C:/GameDev/SDL/include"}
   includedirs {"C:/GameDev/OpenGL/include"}
   libdirs {"C:/GameDev/SDL/lib"}
   libdirs {"C:/GameDev/OpenGL/lib"}
   links ("SDL2")
   links ("SDL2_image")
   links ("SDL2_mixer")
   links ("SDL2_net")
   links ("SDL2main")
   links {"opengl32"}
   links {"glew32"}
   links {"glew32s"}
   cppdialect "C++17"
   

   files { "**.h", "**.cpp" }


   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
