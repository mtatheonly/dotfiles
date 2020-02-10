function update-docker-completions --description "Update docker completions"
   curl -o $HOME/.config/fish/completions/docker.fish -L# https://github.com/docker/cli/raw/master/contrib/completion/fish/docker.fish
end
