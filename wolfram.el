;;; wolfram.el --- Wolfram Alpha Integration

;; Copyright (C) 2011  Hans Sjunnesson

;; Author: Hans Sjunnesson <hans.sjunnesson@gmail.com>
;; Keywords: math

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Vars:

(defvar wolfram-app-id "2JTYAL-2XAYU3XVE3"
  "The Wolfram Alpha App ID")


;;; Code:

(require 'url)
(require 'xml)

(defun wolfram--url-for-query (query)
  "Formats a WolframAlpha API url."
  (format "http://api.wolframalpha.com/v2/query?appid=%s&input=%s&format=image,plaintext"
	  wolfram-app-id
	  query))

(defun wolfram--xml-for-query (query)
  "Returns XML for a query"
  (let ((result nil))
    (set-buffer
     (url-retrieve-synchronously
      (wolfram--url-for-query query)))
    (goto-char (point-min))
    (setq result (xml-parse-fragment))
    (kill-buffer (current-buffer))
    result))

(defun wolfram-query (query)
  "Sends a query to Wolfram Alpha, returns the resulting data."
  (let* ((xml (cadr (wolfram--xml-for-query query)))
	 (pods (xml-get-children xml 'pod)))
    pods))

(provide 'wolfram))
;;; wolfram.el ends here
