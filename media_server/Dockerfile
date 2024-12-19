# Start with a Debian ARM base image
FROM arm32v7/debian:buster

# Install typical Raspbian packages
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Setup a default user, similar to the 'pi' user on Raspbian
RUN useradd -m pi && echo "pi:raspberry" | chpasswd && adduser pi sudo

CMD ["/bin/bash"]
