FROM mcr.microsoft.com/windows/servercore:1809
# Copy the game files over
COPY Game/ /
# Expose ports
EXPOSE 7774-7787/udp
# Start server
WORKDIR /System
ENTRYPOINT ["ucc.exe", "server", "Vortex2.unr?Game=JCoopZ1.JCoopZGame?Difficulty=5"]