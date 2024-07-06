#!/bin/bash

find folder1/ -type f | xargs sed -i 's/bug/feature/g'