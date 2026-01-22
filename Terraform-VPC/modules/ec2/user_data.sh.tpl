#!/bin/bash
set -euxo pipefail

# Logging setup
LOG_FILE="${LOG_FILE}"
exec > >(tee -a ${LOG_FILE} | logger -t user-data -s 2>/dev/console) 2>&1

echo "Bootstrapping EC2..."

# Display instance info in log
echo "Instance: ${instance_name}"
echo "Environment: ${environment}"

# Install nginx
yum install -y nginx

# Create a simple HTML page
cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
  <head>
    <title>Terraform EC2</title>
  </head>
  <body>
    <h1>🚀 EC2 Provisioned Successfully</h1>
    <p><strong>Instance:</strong> ${instance_name}</p>
    <p><strong>Environment:</strong> ${environment}</p>
    <p><strong>Hostname:</strong> $(hostname)</p>
    <p><strong>Time:</strong> $(date)</p>
  </body>
</html>
EOF

# Enable and start nginx
systemctl enable nginx
systemctl start nginx

echo "User data completed"
