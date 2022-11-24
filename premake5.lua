project "imgui"
  kind "StaticLib"
  language "C++"
  staticruntime "off"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
    "${prj.location}/imgui.h",
    "${prj.location}/imgui.cpp",
    "${prj.location}/imgui_draw.cpp",
    "${prj.location}/imgui_internal.h",
    "${prj.location}/imgui_tables.cpp",
    "${prj.location}/imgui_widgets.cpp",
    "${prj.location}/backends/imgui_impl_glfw.h",
    "${prj.location}/backends/imgui_impl_glfw.cpp",
    "${prj.location}/backends/imgui_impl_vulkan.h",
    "${prj.location}/backends/imgui_impl_vulkan.cpp"
  }

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release"
    runtime "Release"
    optimize "on"
