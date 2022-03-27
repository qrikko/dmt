project "dmt"
	kind "staticLib"
	language "C"
	cdialect "C11"
	staticruntime "on"
	tool()

	targetdir (engine_root .. "/lib/" .. outputdir)
	objdir (engine_root .. "/bin-int/" .. outputdir .. "dmt")

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
