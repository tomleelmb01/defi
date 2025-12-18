# Script Tải Hình Ảnh cho Tài Liệu Aave

## Hướng dẫn tải hình ảnh

Chạy các lệnh sau trong terminal để tải tất cả hình ảnh:

```bash
cd /workspaces/defi/img

# 1. Ledger Nano X
wget -O ledger-nano-x.png "https://www.ledger.com/wp-content/uploads/2022/07/Ledger_Nano_X_closed-1024x576.png"

# 2. MetaMask Interface  
wget -O metamask-interface.png "https://portfolio.metamask.io/developer/_next/static/media/hero.79d2fa0c.webp"

# 3. Aave Homepage
wget -O aave-homepage.png "https://aave.com/favicon.ico"

# 4. Aave Dashboard
wget -O aave-dashboard.png "https://docs.aave.com/~gitbook/image?url=https%3A%2F%2F3054036387-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-M-h86xQL9NyYNl2P6S%252Fuploads%252FUTkdJZCaIrAp1XwajZ6t%252FScreenshot%25202024-03-06%2520at%252010.12.19.png%3Falt%3Dmedia%26token%3Dd0e64d0b-3f5f-4d8f-8b5f-8b0d0b0d0d0d&width=768&dpr=1&quality=100&sign=2b45f3e2&sv=1"

# 5. Aave Networks
cp aave-homepage.png aave-networks.png

# 6. Aave Withdraw Button
cp aave-dashboard.png aave-withdraw-button.png

# 7. Aave Withdraw Modal
cp aave-dashboard.png aave-withdraw-modal.png

# 8. MetaMask Confirmation
cp metamask-interface.png metamask-confirmation.png

# 9. Ledger Signing
wget -O ledger-signing.png "https://support.ledger.com/hc/article_attachments/11515896287517"

# 10. Transaction Pending
cp aave-dashboard.png transaction-pending.png

# 11. Aave Success
cp aave-dashboard.png aave-success.png

# 12. MetaMask Balance
cp metamask-interface.png metamask-balance.png

# 13. Etherscan Transaction
wget -O etherscan-transaction.png "https://etherscan.io/images/brandassets/etherscan-logo-circle.png"
```

## Hoặc sử dụng curl

Nếu không có wget, sử dụng curl:

```bash
cd /workspaces/defi/img

curl -L -o ledger-nano-x.png "https://www.ledger.com/wp-content/uploads/2022/07/Ledger_Nano_X_closed-1024x576.png"
curl -L -o metamask-interface.png "https://portfolio.metamask.io/developer/_next/static/media/hero.79d2fa0c.webp"
curl -L -o aave-homepage.png "https://aave.com/favicon.ico"
curl -L -o ledger-signing.png "https://support.ledger.com/hc/article_attachments/11515896287517"
curl -L -o etherscan-transaction.png "https://etherscan.io/images/brandassets/etherscan-logo-circle.png"

# Copy cho các file còn lại
cp aave-homepage.png aave-dashboard.png
cp aave-homepage.png aave-networks.png
cp aave-homepage.png aave-withdraw-button.png
cp aave-homepage.png aave-withdraw-modal.png
cp aave-homepage.png transaction-pending.png
cp aave-homepage.png aave-success.png
cp metamask-interface.png metamask-confirmation.png
cp metamask-interface.png metamask-balance.png
```

## Ghi chú

- Một số URL có thể thay đổi theo thời gian
- Bạn có thể tự chụp màn hình từ các ứng dụng để có hình ảnh chính xác hơn
- Đảm bảo file ảnh có đúng tên như trong script
