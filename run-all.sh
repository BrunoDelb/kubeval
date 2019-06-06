#!/bin/bash
set -e

cd /fixtures
exec kubeval /fixtures/* $@

