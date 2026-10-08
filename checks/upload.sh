#!/bin/sh
# The home page is the Struts upload form (a multipart form posted to a .action URL).
set -e
curl -fsS http://struts2:8080/ | grep -qi 'multipart/form-data'
