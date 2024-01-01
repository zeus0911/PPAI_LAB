(defun is-spam-or-ham (email-text)
 
  (setq spam-words '("buy" "now" "limited" "offer" "discount" "click" "money" "free" "guarantee"))

  (setq email-text (string-downcase email-text))

  (dolist (word spam-words)
    (if (search word email-text)
        (return-from is-spam-or-ham "SPAM")))

  "HAM")

(setq email-text "Get a limited time offer! Buy now and get a discount!")
(setq result (is-spam-or-ham email-text))
(format t "Email is: ~a" result)
