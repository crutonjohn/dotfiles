# wraps alacritty-colorscheme
function tokyo --wraps alacritty-colorscheme -d 'changes alacritty terminal color'
  alacritty-colorscheme -V apply tokyo-night.yaml
end
