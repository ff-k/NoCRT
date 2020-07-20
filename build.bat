@echo off

call cl /nologo /O1           mainCRTStartup.c   /FemainCRTStartup_c.exe   /link /nodefaultlib /subsystem:console
call cl /nologo /O1 /EHa-s-c- mainCRTStartup.cpp /FemainCRTStartup_cpp.exe /link /nodefaultlib /subsystem:console
