(defun generate-uuids ()
  (interactive)
  (while (re-search-forward "00000000-0000-0000-0000-000000000000" nil t)
    (delete-region (match-beginning 0) (match-end 0))
    (let ((uuid (shell-command-to-string "uuidgen")))
      (insert (substring uuid 0 (1- (length uuid)))))))

(add-to-list 'c-style-alist
             '("insight"
               (c-basic-offset . 4)
               (c-comment-only-line-offset 0 . 0)
               (c-offsets-alist
                (inline-open . 0)
                (topmost-intro-cont . +)
                (statement-block-intro . +)
                (knr-argdecl-intro . 5)
                (substatement-open . +)
                (substatement-label . +)
                (label . +)
                (statement-case-open . +)
                (statement-cont . +)
                (arglist-intro . +)
                (arglist-close . +)
                (access-label . 0)
                (inher-cont . c-lineup-java-inher)
                (func-decl-cont . c-lineup-java-throws))))

(provide 'insight)
