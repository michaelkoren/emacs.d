(require 'prettify)
(require 'pc-select)
(pc-selection-mode 0)

(require 'dos-unix-conversion)

(delete-selection-mode 1)

(column-number-mode t)
(line-number-mode t)

(set-default 'fill-column 80)

(global-hi-lock-mode 1)


(global-set-key [(control meta b)] 'toggle-truncate-lines)
(global-set-key [(control z)] 'undo)
(global-set-key [(meta g)] 'goto-line)




