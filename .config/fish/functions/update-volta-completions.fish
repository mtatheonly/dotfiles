function update-volta-completions --description "Update volta.sh completions"
    volta completions -f -o $HOME/.config/fish/completions/volta.fish fish
end
