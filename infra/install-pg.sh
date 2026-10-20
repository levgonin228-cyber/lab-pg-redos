#!/usr/bin/env bash
set -euo pipefail

sudo dnf module enable postgresql:15 -y
sudo dnf install postgresql-server -y
sudo postgresql-setup --initdb
sudo systemctl enable --now postgresql
