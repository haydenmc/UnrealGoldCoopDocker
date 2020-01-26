FROM mcr.microsoft.com/windows/servercore:1809
# Copy the game files over
COPY Game/ /

# Copy script for starting up the server
COPY start.cmd /

# Create volume for persisted data
VOLUME [ "C:/_data" ]

# Expose ports
EXPOSE 7774-7787/udp

# Start server
ENTRYPOINT ["start.cmd", "server"]
CMD ["Vortex2.unr?Game=JCoopZ1.JCoopZGame?Difficulty=5"]