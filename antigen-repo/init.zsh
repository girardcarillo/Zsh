#-- START ZCACHE GENERATED FILE
#-- GENERATED: dimanche 1 octobre 2017, 11:42:41 (UTC+0200)
#-- ANTIGEN v2.2.1
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/cloe/.config/zsh/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/git /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/svn /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv /home/cloe/.config/zsh/antigen-repo/bundles/zdharma/fast-syntax-highlighting /home/cloe/.config/zsh/antigen-repo/bundles/zsh-users/zsh-history-substring-search /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-completions /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-utilities /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-aggregator /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-org-pages /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-themes) path+=(/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/git /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/svn /home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv /home/cloe/.config/zsh/antigen-repo/bundles/zdharma/fast-syntax-highlighting /home/cloe/.config/zsh/antigen-repo/bundles/zsh-users/zsh-history-substring-search /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-completions /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-utilities /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-aggregator /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-org-pages /home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-themes)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/cloe/.config/zsh/antigen-repo/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/svn/svn.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/zdharma/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-completions/zsh-completions.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-utilities/init.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-aggregator/zsh-aggregator.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-org-pages/zsh-org-pages.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-themes/zsh-themes.plugin.zsh';
source '/home/cloe/.config/zsh/antigen-repo/bundles/xgarrido/zsh-themes/zsh-themes-nemo.zsh-theme';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/svn plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/virtualenv plugin true' 'https://github.com/zdharma/fast-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/xgarrido/zsh-completions.git / plugin true' 'https://github.com/xgarrido/zsh-utilities.git / plugin true' 'https://github.com/xgarrido/zsh-aggregator.git / plugin true' 'https://github.com/xgarrido/zsh-org-pages.git / plugin true' 'https://github.com/xgarrido/zsh-themes.git / plugin true' 'https://github.com/xgarrido/zsh-themes.git nemo.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -g ANTIGEN_CACHE_VERSION; ANTIGEN_CACHE_VERSION='v2.2.1'

#-- END ZCACHE GENERATED FILE
