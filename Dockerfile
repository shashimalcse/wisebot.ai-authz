# Use the openfga/openfga image as the base image
FROM openfga/openfga

# Expose the ports that your application uses. 
EXPOSE 8080 8081 3000

# Use the same command that openfga/openfga uses to run its service
CMD ["run"]
