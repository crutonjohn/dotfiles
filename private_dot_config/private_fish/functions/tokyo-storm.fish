# wraps alacritty-colorscheme
function tokyo-storm --wraps alacritty-colorscheme -d 'changes alacritty terminal color'
  alacritty-colorscheme -V apply tokyo-night-storm.yaml
end
