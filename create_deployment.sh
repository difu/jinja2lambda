#!/usr/bin/env bash
echo "Creating deployment package"
rsync -ax /tmp/* /deployment

cd /deployment
chmod 644 $(find /deployment -type f)
chmod 755 $(find /deployment -type d)
echo "Zipping..."
ls /export
zip -r9 /export/lambda_jinja2layer.zip .
