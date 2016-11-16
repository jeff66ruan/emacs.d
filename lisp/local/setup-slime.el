;;; setup-slime.el
;;; commentary:

;;; code:

(setf slime-lisp-implementations
      `((sbcl    ("sbcl" "--dynamic-space-size" "2000"))
        (roswell ("ros" "-Q" "run"))))
(setf slime-default-lisp 'sbcl)

(provide 'setup-slime)
;;; setup-editing.el ends here
