#!/bin/bash
docker ps -q --filter="name=api" | xargs  docker stats
