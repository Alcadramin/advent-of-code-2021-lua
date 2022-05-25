FROM gitpod/workspace-full

USER gitpod

RUN sudo apt -y update && sudo apt -y install lua5.3
