#!/bin/bash
echo "Validating application..."
curl -f http://localhost:4000 || exit 1

