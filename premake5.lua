workspace "cs-template"

    configurations 
    { 
        "Debug",
        "Release"
    }
    
    platforms
    {
        "x64",
        "ARM64"
    }

	filter "platforms:x64"
		architecture "x86_64"

 	filter "configurations:ARM64"
		architecture "ARM64"

outputDir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["TemplateProject"] 	= "%{wks.location}/TemplateProject/src"

include "TemplateProject"