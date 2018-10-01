;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(doom! :feature
                                        ;debugger          ; FIXME stepping through code, to help you add bugs
       eval              ; run code, run (also, repls)
       file-templates    ; auto-snippets for empty files
       (lookup           ; helps you navigate your code and documentation
        +devdocs         ; ...on devdocs.io online
        +docsets)        ; ...or in Dash docsets locally
       snippets          ; my elves. They type so I don't have to
       spellcheck        ; tasing you for misspelling mispelling
       (syntax-checker   ; tasing you for every semicolon you forget
        +childframe
        )     ; use childframes for error popups (Emacs 26+ only)


       :completion
       (company          ; the ultimate code completion backend
        +auto)           ; as-you-type code completion
       (ivy              ; a search engine for love and life
        +fuzzy)


       :ui
       doom              ; what makes DOOM look the way it does
       ;; doom-dashboard    ; a nifty splash screen for Emacs
       ;; ( doom-modeline  +new)    ; a snazzy Atom-inspired mode-line
       ;; doom-modeline                                 ;
       modeline                                        ;
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE tags
                                        ;modeline          ; snazzy, Atom-inspired modeline, plus API
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
                                        ;unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       window-select     ; visually switch windows
       nav-flash ; blink the current line after jumping                         ;

       :editor
       ( format +onsave)  ; automated prettiness
       multiple-cursors  ; editing in many places at once
       rotate-text ; cycle region at point between text candidates

       :emacs
       dired             ; making dired pretty [functional]
       ediff             ; comparing files in Emacs
       electric          ; smarter, keyword-based electric-indent
       imenu             ; an imenu sidebar and searchable code index
       term              ; terminals in Emacs
       vc                ; version-control and Emacs, sitting in a tree

       :tools
       editorconfig      ; let someone else argue about tabs vs spaces
       make              ; run make tasks from Emacs
       magit             ;
       pdf               ; pdf enhancements

       :lang
       assembly          ; assembly for fun or debugging
       (cc +irony +rtags); C/C++/Obj-C madness
       clojure           ; java with a lisp
       data              ; config/data formats
       emacs-lisp        ; drown in parentheses
       rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       (sh +fish)        ; she sells (ba|z)sh shells on the C xor
       (org              ; organize your plain life in plain text
        +attach          ; custom attachment system
        +babel           ; running code in org
        +capture         ; org-capture in and outside of Emacs
        +export          ; Exporting org to whatever you want
        +present) ; Emacs for presentations                         ;
       :app
       :collab

       :completion
       ;; (lsp +rust)

       :config

       (default +snippets))
