# Use a minimal base image GOOS=linux GOARCH=amd64 go build -o app .
# docker build -t myapp:latest .
# docker run -p 8080:8080 myapp:latest
FROM alpine:3.20

# Create working directory
WORKDIR /app

# Copy the prebuilt Go binary
COPY app .

# Expose port (optional)
EXPOSE 8080

# Run the binary
CMD ["./app"]
