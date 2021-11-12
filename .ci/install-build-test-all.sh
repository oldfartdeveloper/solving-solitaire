#!/bin/sh

# This script performs all the steps to install, build, and test
# the example programs for this project.

spago build
spago test
