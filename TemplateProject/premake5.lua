project "TemplateProject"
    kind "SharedLib"
    language "C#"
		
    targetdir 	("%{wks.location}/bin/%{prj.name}/" .. outputDir)
    objdir 		("%{wks.location}/obj/%{prj.name}/" .. outputDir)

    files 
    { 
        "src/**.cs"
    }

	links
	{
	}
	
    filter "system:windows"
        staticruntime "off"
        systemversion "latest"
		
	filter "system:linux"
        staticruntime "off"
        pic "On"
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
        symbols "on"
    filter "configurations:Release"
		runtime "Release"
        optimize "on"