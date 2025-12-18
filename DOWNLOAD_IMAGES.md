# Hướng Dẫn Thêm Hình Ảnh Minh Họa

## ⚠️ Lưu Ý Quan Trọng

Do hạn chế về bản quyền và URL thay đổi thường xuyên, **cách tốt nhất** là bạn tự chụp màn hình (screenshot) trong quá trình sử dụng thực tế các ứng dụng DeFi.

## Cách 1: Chụp Màn Hình Thực Tế (KHUYẾN NGHỊ)

Đây là cách tốt nhất để có hình ảnh chính xác và cập nhật:

### Bước 1: Chuẩn bị
- Mở các ứng dụng: Ledger Live, MetaMask, Aave
- Kết nối Ledger Nano X
- Sẵn sàng công cụ chụp màn hình (Snipping Tool, Screenshot, etc.)

### Bước 2: Chụp màn hình các bước
Chụp và lưu với đúng tên file sau vào thư mục `img/`:

1. **ledger-nano-x.png** - Ảnh thiết bị Ledger Nano X (chụp từ trang web Ledger hoặc thiết bị thật)
2. **metamask-interface.png** - Giao diện MetaMask khi mở extension
3. **aave-homepage.png** - Trang chủ https://app.aave.com/
4. **aave-dashboard.png** - Dashboard Aave sau khi kết nối ví
5. **aave-networks.png** - Dropdown chọn network trên Aave
6. **aave-withdraw-button.png** - Nút "Withdraw" trong phần Supplied assets
7. **aave-withdraw-modal.png** - Popup khi click Withdraw
8. **metamask-confirmation.png** - Popup xác nhận giao dịch của MetaMask
9. **ledger-signing.png** - Màn hình Ledger khi ký giao dịch
10. **transaction-pending.png** - Trạng thái pending trên MetaMask
11. **aave-success.png** - Thông báo thành công trên Aave
12. **metamask-balance.png** - Số dư trong MetaMask sau khi rút
13. **etherscan-transaction.png** - Chi tiết giao dịch trên Etherscan

### Bước 3: Tối ưu hóa ảnh (tùy chọn)
```bash
# Nếu cần resize ảnh để giảm dung lượng
cd /workspaces/defi/img
for img in *.png; do
    convert "$img" -resize 800x600\> "$img"
done
```

## Cách 2: Sử dụng Ảnh Có Sẵn Từ Internet

Nếu bạn muốn sử dụng ảnh có sẵn, dưới đây là một số nguồn (lưu ý về bản quyền):

```bash
cd /workspaces/defi/img

# Etherscan logo (Public)
wget -O etherscan-transaction.png "https://etherscan.io/images/brandassets/etherscan-logo-circle.png"

# Các ảnh khác nên tự chụp màn hình hoặc tìm từ:
# - Trang tài liệu chính thức của Ledger: https://support.ledger.com
# - Trang tài liệu của MetaMask: https://support.metamask.io
# - Trang tài liệu của Aave: https://docs.aave.com
```

## Cách 3: Sử dụng Placeholder Tạm Thời

Nếu chưa có ảnh, bạn có thể tạo placeholder text:

```bash
cd /workspaces/defi/img

for name in ledger-nano-x metamask-interface aave-homepage aave-dashboard aave-networks aave-withdraw-button aave-withdraw-modal metamask-confirmation ledger-signing transaction-pending aave-success metamask-balance; do
    echo "[Placeholder: $name]" > "$name.png"
done
```

## Sau Khi Có Đủ Hình Ảnh

Commit và push lên GitHub:

```bash
cd /workspaces/defi
git add img/
git commit -m "Thêm hình ảnh minh họa cho tài liệu"
git push origin main
```

## Lưu Ý Bản Quyền

- ⚠️ Chỉ sử dụng ảnh từ nguồn hợp pháp
- ⚠️ Ảnh chụp màn hình từ ứng dụng thực tế là an toàn nhất
- ⚠️ Không sao chép ảnh từ blog/trang web khác mà không có phép
- ✅ Ảnh từ tài liệu chính thức thường được phép sử dụng cho mục đích giáo dục
