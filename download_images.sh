#!/bin/bash

# Tạo thư mục img nếu chưa có
mkdir -p img

# Tải các hình ảnh
echo "Đang tải hình ảnh..."

wget -q -O img/ledger-nano-x.png "https://www.ledger.com/wp-content/uploads/2022/07/Ledger_Nano_X_closed-1024x576.png" || curl -sL -o img/ledger-nano-x.png "https://www.ledger.com/wp-content/uploads/2022/07/Ledger_Nano_X_closed-1024x576.png"

wget -q -O img/metamask-interface.png "https://metamask.io/images/mm-logo.svg" || curl -sL -o img/metamask-interface.png "https://metamask.io/images/mm-logo.svg"

wget -q -O img/aave-homepage.png "https://aave.com/favicon.ico" || curl -sL -o img/aave-homepage.png "https://aave.com/favicon.ico"

wget -q -O img/aave-dashboard.png "https://aave.com/favicon.ico" || curl -sL -o img/aave-dashboard.png "https://aave.com/favicon.ico"

wget -q -O img/ledger-signing.png "https://support.ledger.com/hc/article_attachments/11515896287517" || curl -sL -o img/ledger-signing.png "https://support.ledger.com/hc/article_attachments/11515896287517"

echo "Hoàn tất tải hình ảnh!"
ls -lh img/
