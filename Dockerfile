FROM codercom/code-server

COPY config.yaml /home/coder/.config/code-server/config.yaml
WORKDIR /home/coder
RUN true \
    && set -e \
    && zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && sudo chsh -s /bin/zsh coder \
    && sudo apt-get update 
