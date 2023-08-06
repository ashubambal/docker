#################################################################################################
# Author : Ashutosh Bambal
# Date : 08/06/2023
# Description : This script is used to install docker on ubuntu machine with additional permision
# OS : Ubuntu
##################################################################################################

# Update the system
echo "Updating the system..."
sudo apt-get update -y
echo "System updated sucessfully "
echo "--------------------------------------- "

# Install the docker
echo "Installing Docker..."
sudo apt-get install docker.io -y
echo "Docker Installation Complited"
echo "--------------------------------------- "

# Add user to docker group 
echo "Adding user to the docker group..."
sudo usermod -aG docker ubuntu
echo "User added sucessefully on docker group"
echo "--------------------------------------- "

# Restart the docker
echo "Restarting docker..."
sudo systemctl restart docker
echo "--------------------------------------- "

# Check Docker Version 
echo "Docker vesrion =>" | docker --version
