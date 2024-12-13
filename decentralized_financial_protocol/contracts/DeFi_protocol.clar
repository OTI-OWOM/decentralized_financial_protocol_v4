;; title: DeFi_protocol

;; Inline Trait Definitions for Fungible and Non-Fungible Tokens
(define-trait ft-trait 
  (
    ;; Transfer tokens from sender to recipient
    (transfer (uint principal principal (optional (buff 34)) ) (response bool uint))
    
    ;; Get token balance of an account
    (get-balance (principal) (response uint uint))
    
    ;; Get total token supply
    (get-total-supply () (response uint uint))
    
    ;; Get token decimals
    (get-decimals () (response uint uint))
    
    ;; Get token name
    (get-name () (response (string-ascii 32) uint))
    
    ;; Get token symbol
    (get-symbol () (response (string-ascii 32) uint))
  )
)

(define-trait nft-trait
  (
    ;; Transfer NFT from sender to recipient
    (transfer (uint principal principal) (response bool uint))
    
    ;; Get owner of an NFT
    (get-owner (uint) (response (optional principal) uint))
    
    ;; Get last token ID (total supply)
    (get-last-token-id () (response uint uint))
    
    ;; Get token URI for a specific token
    (get-token-uri (uint) (response (optional (string-utf8 256)) uint))
  )
)


;; Comprehensive Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant PROTOCOL-VERSION u4)
(define-constant PRECISION u10000)
