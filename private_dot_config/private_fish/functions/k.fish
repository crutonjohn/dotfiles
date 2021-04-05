# https://github.com/evanlucas/fish-kubectl-completions/issues/22#issuecomment-505487519
function k --wraps kubectl -d 'kubectl shorthand'
  kubectl $argv
end
