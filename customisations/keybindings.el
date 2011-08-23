;; porkrind sees the delete key as kp-delete but binds it to delete-backward-char.
(global-set-key (kbd "<kp-delete>") 'delete-char)

; use full-ack for Find
(global-set-key [(super F)] 'ack)

; buffer switching
(global-set-key [(super {)] 'previous-buffer)
(global-set-key [(super })] 'next-buffer)

; window switching
(global-set-key (kbd "s-`") 'other-window)

				   
