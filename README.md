# Steps
1. Make sure your `~/.vimrc` file matches with this one
2. run `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim` within your terminal
3. Go into the .vimrc and in normal mode type `:PlugInstall` and `"PlugUpdate`
4. Restart vim to see changes 

# Troubleshooting
- If you don't want to deal with plugins skip steps 2 and 3 and delete or comment out the plugins section (line 25) in the `.vimrc` file
- If step 2 isn't working go to [https://github.com/junegunn/vim-plug/blob/master/plug.vim] and paste that code into `~/.vim/autoload/plug.vim` (you will need to make the `plug.vim` file)
- You could also copy and paste this `.vimrc` file into your own if codespaces is giving you trouble

# Features
1. Auto complete (plugin)
2. Auto indentation (plugin)
3. Auto pairs for things like (), [], {}, "", and ''. (plugin)
4. Comment out code in normal and visual mode with space+/ (plugin)
5. Switch between windows with shift + {h,j,k,l}
6. Open a file tree with space b
7. Open terminal to the left with space t
8. Cursor changes depending on which mode your in
9. Gives functionality to the status bar
10. Makes searching through the file a bit cleaner

# Colorscheme
- Find a colorscheme you like and either use `colorscheme name` (this works for native colorschemes already installed for vim)
- Or find one online, example gruvbox [https://github.com/morhetz/gruvbox]
- Go to Plugins and write `Plug 'morhetz/gruvbox'`
- Then in the colorscheme section write `colorscheme gruvbox` 
- Do `:PlugInstall` and `:PlugUpdate` and restart vim


<img width="3020" height="1678" alt="image" src="https://github.com/user-attachments/assets/b458fff8-32f1-493f-8779-6876c9d188db" />
<img width="3024" height="1784" alt="image" src="https://github.com/user-attachments/assets/2270e77e-ea7f-4820-bbf3-370bd247a13d" />
<img width="3024" height="1786" alt="image" src="https://github.com/user-attachments/assets/6ccf92a4-dd4f-443e-9163-fc1f7c58a63e" />
<img width="3024" height="1782" alt="image" src="https://github.com/user-attachments/assets/4a9b622c-7e4a-4a23-adc6-a4b1353b31a2" />


