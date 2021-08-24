project "dmt"
    kind "staticLib"
    language "C"
    cdialect "C11"
    staticruntime "on"

    targetdir (engine_root .. "/lib/" .. outputdir)
    objdir (engine_root .. "/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.h",
        "src/**.c",
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    filter "configurations:Release"
        runtime "Release"
        optimize "on"


