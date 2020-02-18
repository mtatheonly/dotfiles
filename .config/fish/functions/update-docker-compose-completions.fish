function update-docker-compose-completions --description "Update docker-compose completions"
   curl -o $HOME/.config/fish/completions/docker-compose.fish -L# https://github.com/docker/compose/raw/master/contrib/completion/fish/docker-compose.fish
end
