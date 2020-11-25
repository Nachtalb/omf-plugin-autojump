# autojump initialization hook

if set -q autojump_path and test -f $autojump_path
  . $autojump_path
else
  for path in ~/.autojump/share/autojump/autojump.fish /usr/share/autojump/autojump.fish
    if test -f $path
      set -g autojump_fish $path
      source $autojump_path
      break
    end
  end
end

if not which autojump >/dev/null ^/dev/null
  echo 'Autojump is not installed. Please install it first from https://github.com/wting/autojump#installation' >&2
end
