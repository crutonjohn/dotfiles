# wraps exa
function ls --wraps exa -d 'wraps exa rust ls alt'
  exa -la $argv
end
