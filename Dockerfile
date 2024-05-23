# Use Rocky Linux 9 as the base image
FROM rockylinux:9

# Set the working directory in the container
WORKDIR /app

# Update the package manager and install necessary dependencies
RUN dnf -y update && \
    dnf -y install python3 python3-pip && \
    dnf -y install gcc-c++ && \
    dnf -y install mesa-libGL mesa-libGLU


# Install Python packages
RUN pip3 install numpy btrack scikit-image scipy pandas scikit-learn opencv-python

# Copy your application files
COPY . /app

# Define the entry point to run your application
CMD ["/bin/bash"]