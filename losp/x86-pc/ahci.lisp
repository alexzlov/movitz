;;;; Advanced Host Controller Interface
;;;;-------------------------------------------------------------------
(defpackage muerte.x86-pc.ahci
  (:use muerte.cl muerte.lib muerte)
  (:export))

(defconstant *fis-type-reg-h2d*   #x24)		;; Register FIS - host to device
(defconstant *fis-type-reg-d2h*   #x34)		;; Register FIS - device to host
(defconstant *fis-type-dma-act*   #x39)		;; DMA activate FIS - device to host
(defconstant *fis-type-dma-setup* #x41)		;; DMA setup FIS - bidirectional
(defconstant *fis-type-data*      #x46)		;; Data FIS - bidirectional
(defconstant *fis-type-bist*      #x58)		;; BIST activate FIS - bidirectional
(defconstant *fis-type-pio-setup  #x5F)		;; PIO setup FIS - device to host
(defconstant *fis-type-dev-bits   #xA1)		;; Set device bits FIS - device to host
