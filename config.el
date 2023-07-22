;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "RandomScanian"
      user-mail-address "RandomScanian@protonmail.com")
(setq doom-font (font-spec :family "JetBrainsMono NF" :size 15)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono NF" :size 16))
(setq doom-theme 'doom-dracula)
(setq display-line-numbers-type 'relative)
(setq org-directory "~/nix-dotfiles/org/")
(after! vundo (setq vundo-window-max-height 16))
(setq server-kill-new-buffers nil
      shell-file-name "/run/current-system/sw/bin/zsh"
      )
(use-package! evil
  :config
  (evil-ex-define-cmd "q" 'kill-this-buffer)
  (evil-ex-define-cmd "wq" 'doom/save-and-kill-buffer)
  (evil-ex-define-cmd "Q" 'doom/kill-all-buffers)
  (evil-ex-define-cmd "WQ" 'save-buffers-kill-emacs))
(map!
 :n "u" 'evil-insert
 :n "U" 'evil-insert-line
 :n "l" 'evil-undo
 :v "l" 'evil-downcase
 :v "L" 'evil-upcase
 :nm "y" 'evil-open-below
 :nm "Y" 'evil-open-above
 :nvmo "f" 'evil-forward-word-end
 :nvmo "F" 'evil-forward-WORD-end
 :nvmo "j" 'evil-yank
 :nvmo "J" 'evil-yank-line
 :nvmo "n" 'evil-backward-char
 :nvmo "e" 'evil-next-line
 :nvmo "i" 'evil-previous-line
 :nvmo "o" 'evil-forward-char
 :nvmo "N" 'evil-window-top
 :nvmo "E" 'evil-join
 :nvmo "I" '+lookup/documentation
 :nvmo "O" 'evil-window-bottom
 )
