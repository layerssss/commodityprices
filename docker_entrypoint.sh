#!/usr/bin/env bash
set -e
bin/rake db:migrate 
bin/foreman start --port 80
