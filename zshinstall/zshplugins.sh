#! /usr/bin/bash
CUR_USER=$USER

#tema porwerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#confiruracion del .zshrc

#sed -ier 's%ZSH_THEME=\"\w*\"%ZSH_THEME=\"\powerlevel10k/powerlevel10k"%g' ~/.zshrc
sed -ier 's%ZSH_THEME="robbyrussell"%ZSH_THEME="powerlevel10k/powerlevel10k"%g' ~/.zshrc
sed -ier 's/plugins=(git)/plugins=(git sudo fzf zsh-completions zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting)/g' ~/.zshrc
echo 'alias zshconfig="nano ~/.zshrc"' >> ~/.zshrc
echo 'alias ls="lsd"' >> ~/.zshrc
echo 'alias la="lsd -la"' >> ~/.zshrc
echo "export EDITOR='nano'" >> ~/.zshrc
sudo chsh -s /bin/zsh "$CUR_USER"

#complementos

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

exec zsh
