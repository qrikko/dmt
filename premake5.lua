project "dmt"
	kind "staticLib"
	language "C"
	cdialect "C11"
	staticruntime "on"
	toolset "clang"

	targetdir (engine_root .. "/lib/" .. outputdir)
	objdir (engine_root .. "/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.c",
	}

	buildoptions { "-fPIC" }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
