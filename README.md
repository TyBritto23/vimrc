# Steps
1. Make sure your `~/.vimrc` file matches with this one
2. run `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim` within your terminal
3. Go into the .vimrc and type `:PlugInstall`
4. Restart vim to see changes 


- If step 1 isn't working go to [https://github.com/junegunn/vim-plug/blob/master/plug.vim] and paste that code into `~/.vim/autoload/plug.vim` (you will need to make the `plug.vim` file)
- You could also copy and paste this `.vimrc` file into your own if codespaces is giving you trouble

# Features
1. Auto Complete
2. Auto indentation
3. Open a file tree with space b
4. Cursor changes depending on which mode your in
5. Gives functionality to the status bar
6. Makes it easier to move between open windows using vim motions
7. Makes searching through the file a bit cleaner


# Colorscheme
- Find a colorscheme you like and either use `colorscheme name` (this works for native colorschemes already installed for vim)
- Or find one online, example gruvbox [https://github.com/morhetz/gruvbox]
  - Go to Plugins and write `Plug 'morhetz/gruvbox'`
  - Do `:PlugInstall` and `:PlugUpdate`
  - Then in General Settings and write `colorscheme gruvbox` and restart vim


<img width="3022" height="1724" alt="image" src="https://github.com/user-attachments/assets/29ef3b50-d5f2-46d1-9dbf-cf5ffd57ee23" />
