# Use the openfga/openfga image as the base image
FROM openfga/openfga

# Expose the ports that your application uses. 
EXPOSE 8080 8081 3000

# Create a non-root user
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10014 \
    "cronuseo"
# Use the above created unprivileged user
USER 10014

# Use the same command that openfga/openfga uses to run its service
CMD ["run"]
