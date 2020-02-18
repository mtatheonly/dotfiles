function update-kubectl-completions --description "Update kubectl completions"
   curl -o $HOME/.config/fish/completions/kubectl.fish -L# https://gist.github.com/terlar/28e1c2e4ac9a27be7a5950306bf45ab2/raw/432c96b73132ca74c78027a40bcd15bf62af9ff3/kubectl.fish
end
