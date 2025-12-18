# Hướng Dẫn Rút Tiền Từ Aave Về Ví MetaMask (Kết Nối Ledger Nano X)

> **⚠️ Lưu ý về hình ảnh**: Tài liệu này sử dụng hình ảnh minh họa được lưu trong thư mục `img/`. 
> Để xem hình ảnh đầy đủ, vui lòng tải về bằng cách chạy lệnh trong file [DOWNLOAD_IMAGES.md](DOWNLOAD_IMAGES.md)

## Giới Thiệu

Tài liệu này hướng dẫn chi tiết cách rút tiền (withdraw) từ giao thức Aave về ví MetaMask của bạn, trong trường hợp ví MetaMask được kết nối với thiết bị phần cứng Ledger Nano X để bảo mật tối đa.

---

## Yêu Cầu Trước Khi Bắt Đầu

- ✅ Có tài khoản MetaMask đã kết nối với Ledger Nano X
- ✅ Đã gửi tiền (deposit) vào Aave trước đó
- ✅ Có đủ ETH để trả phí gas (thường từ $5-50 tùy thời điểm)
- ✅ Ledger Nano X đã cài đặt ứng dụng Ethereum
- ✅ Đã cập nhật firmware và ứng dụng Ethereum lên phiên bản mới nhất

---

## Bước 1: Chuẩn Bị Ledger Nano X

### 1.1 Kết Nối và Mở Khóa Ledger

![Ledger Nano X](img/ledger-nano-x.png)

1. Kết nối Ledger Nano X với máy tính qua Bluetooth hoặc USB-C
2. Nhập mã PIN để mở khóa thiết bị
3. Cuộn và chọn ứng dụng **"Ethereum"** trên Ledger
4. Chờ màn hình hiển thị "Application is ready"

### 1.2 Kiểm Tra Cài Đặt Blind Signing

⚠️ **Quan trọng**: Để tương tác với smart contracts phức tạp như Aave, bạn cần bật tính năng "Blind signing"

1. Trong ứng dụng Ethereum trên Ledger, nhấn cả 2 nút để vào **Settings**
2. Tìm và chọn **"Blind signing"**
3. Đảm bảo nó được bật (**Enabled**)

---

## Bước 2: Kết Nối MetaMask Với Ledger

### 2.1 Mở MetaMask và Chuyển Đổi Tài Khoản

![MetaMask Interface](img/metamask-interface.png)

1. Mở extension MetaMask trên trình duyệt
2. Click vào biểu tượng tài khoản ở góc trên bên phải
3. Chọn tài khoản Ledger của bạn (thường có biểu tượng ổ khóa hoặc chữ "Ledger")

### 2.2 Xác Nhận Kết Nối

- MetaMask sẽ hiển thị thông báo "Ledger device connected"
- Đảm bảo Ledger vẫn mở khóa và đang chạy ứng dụng Ethereum

---

## Bước 3: Truy Cập Giao Diện Aave

### 3.1 Vào Website Aave

![Aave Homepage](img/aave-homepage.png)

1. Truy cập: **https://app.aave.com/**
2. Click nút **"Connect Wallet"** ở góc trên bên phải
3. Chọn **"MetaMask"** từ danh sách ví

### 3.2 Chọn Mạng (Network)

![Aave Networks](img/aave-networks.png)

1. Aave hỗ trợ nhiều mạng: Ethereum, Polygon, Avalanche, Arbitrum, Optimism
2. Click vào dropdown network ở góc trên
3. Chọn mạng mà bạn đã deposit tiền (thường là **Ethereum Mainnet**)
4. MetaMask sẽ tự động chuyển đổi network

---

## Bước 4: Kiểm Tra Số Dư Đã Gửi

### 4.1 Xem Dashboard

![Aave Dashboard](img/aave-dashboard.png)

1. Sau khi kết nối thành công, bạn sẽ thấy **Dashboard** của mình
2. Phần **"Supplied assets"** hiển thị các tài sản bạn đã gửi vào Aave
3. Bạn sẽ thấy:
   - **Amount**: Số lượng token gốc bạn gửi
   - **APY**: Lãi suất hàng năm
   - **Balance**: Số dư hiện tại (bao gồm lãi đã tích lũy)

### 4.2 Xem aToken

- Khi bạn deposit vào Aave, bạn nhận được aToken (ví dụ: aUSDC, aDAI, aETH)
- aToken tự động tăng giá trị theo thời gian khi bạn kiếm lãi
- Bạn có thể xem aToken trong ví MetaMask bằng cách **Add Custom Token** với địa chỉ contract của aToken

---

## Bước 5: Thực Hiện Rút Tiền (Withdraw)

### 5.1 Chọn Tài Sản Muốn Rút

![Aave Withdraw Button](img/aave-withdraw-button.png)

1. Trong phần **"Supplied assets"**, tìm tài sản bạn muốn rút
2. Click vào nút **"Withdraw"** bên cạnh tài sản đó

### 5.2 Nhập Số Lượng Muốn Rút

![Aave Withdraw Modal](img/aave-withdraw-modal.png)

1. Cửa sổ popup sẽ hiện ra
2. Nhập số lượng token bạn muốn rút hoặc:
   - Click **"MAX"** để rút toàn bộ (bao gồm cả lãi)
   - Nhập số lượng cụ thể nếu chỉ muốn rút một phần
3. Kiểm tra thông tin:
   - **Amount to withdraw**: Số lượng sẽ rút
   - **Remaining supply**: Số còn lại sau khi rút
   - **Transaction overview**: Tổng quan giao dịch

### 5.3 Xác Nhận Health Factor

⚠️ **Cảnh báo quan trọng**:

- Nếu bạn đang vay (borrow) tiền từ Aave, việc rút tiền có thể ảnh hưởng đến **Health Factor**
- Health Factor < 1.0 có thể dẫn đến thanh lý (liquidation)
- Đảm bảo Health Factor > 1.5 sau khi rút để an toàn

---

## Bước 6: Ký Giao Dịch Với Ledger

### 6.1 Xác Nhận Trên MetaMask

![MetaMask Confirmation](img/metamask-confirmation.png)

1. Click nút **"Withdraw [Token Name]"**
2. MetaMask sẽ hiện popup xác nhận giao dịch
3. Kiểm tra các thông tin:
   - **Gas fee**: Phí giao dịch (có thể điều chỉnh: Low/Medium/High)
   - **Total amount**: Tổng chi phí
   - **Contract address**: Địa chỉ Aave contract

### 6.2 Ký Trên Ledger Nano X

![Ledger Signing](img/ledger-signing.png)

1. Sau khi click **"Confirm"** trên MetaMask, xem Ledger Nano X
2. Ledger sẽ hiển thị thông tin giao dịch:
   - **Review transaction**: Kiểm tra giao dịch
   - **Amount**: 0 ETH (vì đây là smart contract call)
   - **Contract**: Địa chỉ Aave Pool
   - **Max fees**: Phí gas tối đa
3. Cuộn qua tất cả các màn hình bằng nút bên phải
4. Khi thấy **"Accept and send"**, nhấn cả 2 nút để xác nhận
5. Nếu thấy **"Reject"**, nhấn cả 2 nút để hủy

### 6.3 Chờ Xác Nhận Trên Blockchain

![Transaction Pending](img/transaction-pending.png)

1. Sau khi ký, giao dịch sẽ được gửi lên blockchain
2. MetaMask hiển thị trạng thái **"Pending"**
3. Click vào giao dịch để xem chi tiết trên Etherscan
4. Thời gian xác nhận: 30 giây - 5 phút (tùy phí gas và tình trạng mạng)

---

## Bước 7: Xác Nhận Giao Dịch Thành Công

### 7.1 Kiểm Tra Trên Aave

![Aave Success](img/aave-success.png)

1. Khi giao dịch hoàn tất, Aave hiển thị thông báo **"Success"** hoặc **"Transaction completed"**
2. Dashboard cập nhật:
   - **Supplied balance** giảm xuống
   - Nếu rút hết, tài sản sẽ biến mất khỏi danh sách

### 7.2 Kiểm Tra Trong MetaMask

![MetaMask Balance](img/metamask-balance.png)

1. Mở MetaMask
2. Kiểm tra số dư token vừa rút đã tăng lên
3. Token sẽ nằm trong ví MetaMask của bạn

### 7.3 Kiểm Tra Trên Etherscan

![Etherscan Transaction](img/etherscan-transaction.png)

1. Click vào giao dịch trong MetaMask
2. Click **"View on Etherscan"**
3. Kiểm tra:
   - ✅ Status: **Success**
   - ✅ From: Địa chỉ ví của bạn
   - ✅ Interacted With: Aave contract
   - ✅ Tokens Transferred: Token bạn vừa rút

---

## Xử Lý Sự Cố Thường Gặp

### ❌ Lỗi: "Ledger device: Invalid data received"

**Nguyên nhân**: Chưa bật Blind signing

**Giải pháp**:
1. Vào Settings trong ứng dụng Ethereum trên Ledger
2. Bật **"Blind signing"**
3. Thử lại giao dịch

### ❌ Lỗi: "Transaction failed" hoặc "Out of gas"

**Nguyên nhân**: Gas limit không đủ

**Giải pháp**:
1. Trong MetaMask, click **"Edit"** ở phần Gas
2. Chọn **"Advanced"**
3. Tăng **"Gas limit"** lên 20-30%
4. Thử lại

### ❌ Lỗi: "Health factor too low"

**Nguyên nhân**: Rút tiền sẽ làm tài khoản có nguy cơ bị thanh lý

**Giải pháp**:
1. Trả nợ (repay) một phần khoản vay trước
2. Hoặc rút ít hơn để giữ Health Factor > 1.5

### ❌ Lỗi: "Cannot withdraw more than supplied"

**Nguyên nhân**: Một phần tài sản đang được dùng làm collateral cho khoản vay

**Giải pháp**:
1. Trả nợ trước
2. Hoặc chỉ rút phần không được dùng làm collateral

### ❌ Lỗi: Ledger không kết nối với MetaMask

**Giải pháp**:
1. Ngắt kết nối và kết nối lại Ledger
2. Đảm bảo ứng dụng Ethereum đang mở trên Ledger
3. Thử kết nối lại MetaMask
4. Restart trình duyệt nếu cần

---

## Lưu Ý Bảo Mật

### 🔒 An Toàn Tối Đa

1. **Không bao giờ chia sẻ**:
   - Seed phrase (24 từ) của Ledger
   - Private key
   - Mã PIN của Ledger

2. **Luôn kiểm tra**:
   - URL phải là: **https://app.aave.com/**
   - Không truy cập từ link lạ hoặc email
   - Kiểm tra địa chỉ contract trên Etherscan

3. **Xác nhận trên Ledger**:
   - Đọc kỹ mọi thông tin trên màn hình Ledger
   - Không ký giao dịch nếu thấy bất thường
   - Địa chỉ contract phải là Aave official

### 🛡️ Phòng Chống Lừa Đảo

- ❌ Không cài extension MetaMask từ nguồn không chính thức
- ❌ Không nhập seed phrase vào website bất kỳ
- ❌ Không kết nối ví với website đáng ngờ
- ✅ Bookmark trang Aave chính thức
- ✅ Kiểm tra SSL certificate (ổ khóa xanh trên thanh địa chỉ)

---

## Chi Phí Giao Dịch

### Phí Gas Ước Tính

| Hoạt động | Gas Used | Chi phí (khi gas 30 gwei) |
|-----------|----------|---------------------------|
| Withdraw (lần đầu) | ~200,000 gas | ~$15-25 |
| Withdraw (lần sau) | ~100,000 gas | ~$8-15 |

**Lưu ý**: Chi phí thực tế phụ thuộc vào:
- Giá gas hiện tại (xem tại: https://etherscan.io/gastracker)
- Tình trạng network (cao điểm hay thấp điểm)
- Token đang rút (một số token tốn gas hơn)

### Mẹo Tiết Kiệm Gas

1. **Giao dịch vào giờ thấp điểm**:
   - Cuối tuần
   - Đêm khuya (giờ UTC: 00:00 - 06:00)

2. **Theo dõi gas tracker**:
   - https://etherscan.io/gastracker
   - https://ethereumprice.org/gas/

3. **Sử dụng mạng Layer 2**:
   - Aave trên Polygon (phí rất thấp: $0.01-0.1)
   - Aave trên Arbitrum/Optimism

---

## Các Câu Hỏi Thường Gặp (FAQ)

### ❓ Tôi có mất aToken khi withdraw không?

Có, aToken sẽ bị đốt (burn) và bạn nhận lại token gốc + lãi đã tích lũy.

### ❓ Tôi có thể rút một phần không?

Có, bạn có thể rút bất kỳ số lượng nào, không nhất thiết phải rút hết. Phần còn lại sẽ tiếp tục sinh lãi.

### ❓ Rút tiền có mất lãi không?

Không, lãi đã tích lũy sẽ được cộng vào số tiền bạn rút. Bạn chỉ ngừng kiếm lãi cho phần đã rút.

### ❓ Tôi có thể hủy giao dịch sau khi ký trên Ledger không?

Nếu giao dịch chưa được confirmed trên blockchain (đang pending), bạn có thể gửi transaction khác với cùng nonce và gas cao hơn để "đè" transaction cũ.

### ❓ Tại sao số tiền rút lại nhiều hơn số tiền gửi?

Đó là lãi bạn đã kiếm được từ khi deposit. Aave tính lãi theo giây và tự động cộng vào aToken.

### ❓ Ledger Nano X hết pin có ảnh hưởng không?

Không ảnh hưởng đến tài sản, nhưng bạn cần sạc pin để sử dụng. Tài sản luôn an toàn trên blockchain.

### ❓ Tôi có thể rút tiền bằng ví khác không?

Không, bạn chỉ có thể rút về ví đã deposit. Không thể chuyển sang địa chỉ khác trực tiếp từ Aave.

---

## Kết Luận

Việc rút tiền từ Aave về ví MetaMask (kết nối Ledger Nano X) là quá trình đơn giản nhưng cần thực hiện cẩn thận. Hãy luôn:

✅ Kiểm tra kỹ thông tin trên Ledger trước khi ký
✅ Đảm bảo phí gas hợp lý
✅ Kiểm tra Health Factor nếu có khoản vay
✅ Xác nhận giao dịch thành công trên Etherscan

**Chúc bạn giao dịch thành công và an toàn! 🚀**

---

---

# PHẦN 2: Hướng Dẫn Rút Thanh Khoản Từ Uniswap

## Giới Thiệu Về Uniswap Liquidity Pool

Uniswap là một sàn giao dịch phi tập trung (DEX) sử dụng mô hình AMM (Automated Market Maker). Khi bạn cung cấp thanh khoản (become a Liquidity Provider), bạn:

- Gửi cặp token (ví dụ: ETH/USDC) vào pool
- Nhận LP tokens (Liquidity Provider tokens) đại diện cho phần đóng góp của bạn
- Kiếm phí giao dịch từ người dùng swap token
- Có thể rút thanh khoản bất cứ lúc nào

**Lưu ý**: Khác với Aave (lending), Uniswap không có khái niệm "vay" hay "Health Factor". Bạn chỉ đơn giản là cung cấp thanh khoản và kiếm phí.

---

## Yêu Cầu Trước Khi Rút Thanh Khoản

- ✅ Có LP tokens trong ví MetaMask
- ✅ Đã cung cấp thanh khoản vào Uniswap trước đó
- ✅ Có đủ ETH để trả phí gas (thường từ $10-80 tùy thời điểm)
- ✅ MetaMask đã kết nối với Ledger Nano X
- ✅ Hiểu về Impermanent Loss

---

## Bước 1: Truy Cập Uniswap

### 1.1 Vào Website Uniswap

![Uniswap Homepage](img/uniswap-homepage.png)

1. Truy cập: **https://app.uniswap.org/**
2. Click **"Connect"** hoặc **"Connect Wallet"** ở góc trên bên phải
3. Chọn **"MetaMask"** từ danh sách ví
4. MetaMask sẽ hiện popup yêu cầu xác nhận kết nối
5. Click **"Next"** và **"Connect"**

### 1.2 Xác Nhận Kết Nối Ledger

![Ledger Connected](img/ledger-connected.png)

1. Đảm bảo Ledger Nano X đã mở khóa
2. Ứng dụng Ethereum đang chạy trên Ledger
3. Blind signing đã được bật (như hướng dẫn ở phần Aave)
4. Uniswap hiển thị địa chỉ ví của bạn ở góc trên

---

## Bước 2: Truy Cập Phần Pool

### 2.1 Vào Mục Pool

![Uniswap Pool Tab](img/uniswap-pool-tab.png)

1. Click vào tab **"Pool"** trên thanh menu (bên cạnh "Swap")
2. Trang Pool sẽ hiển thị danh sách các pool bạn đã cung cấp thanh khoản
3. Bạn sẽ thấy:
   - **Your Positions**: Các vị thế thanh khoản của bạn
   - **Pool name**: Tên cặp token (ví dụ: ETH/USDC)
   - **Fee tier**: Mức phí (0.05%, 0.3%, 1%)
   - **Current value**: Giá trị hiện tại
   - **Unclaimed fees**: Phí chưa claim

---

## Bước 3: Chọn Pool Muốn Rút

### 3.1 Xem Chi Tiết Position

![Uniswap Position Details](img/uniswap-position-details.png)

1. Click vào pool mà bạn muốn rút thanh khoản
2. Trang chi tiết position sẽ mở ra, hiển thị:
   - **Liquidity**: Tổng giá trị thanh khoản bạn đã cung cấp
   - **Unclaimed fees**: Phí giao dịch đã kiếm nhưng chưa thu
   - **Price range**: Khoảng giá mà position của bạn hoạt động (Uniswap V3)
   - **Current price**: Giá hiện tại của cặp token
   - **Token amounts**: Số lượng mỗi token trong pool

### 3.2 Hiểu Về Price Range (Uniswap V3)

⚠️ **Lưu ý về Uniswap V3**:

- V3 cho phép cung cấp thanh khoản trong khoảng giá cụ thể
- Nếu giá ra ngoài khoảng này, bạn ngừng kiếm phí
- Position có thể hoàn toàn bằng 1 token nếu giá di chuyển ra khỏi range

---

## Bước 4: Collect Fees (Thu Phí)

### 4.1 Thu Phí Đã Tích Lũy

![Collect Fees Button](img/uniswap-collect-fees.png)

Trước khi rút thanh khoản, bạn nên thu phí đã kiếm:

1. Click nút **"Collect fees"** hoặc **"Claim fees"**
2. Popup sẽ hiện ra hiển thị số lượng token phí
3. Click **"Collect"**
4. MetaMask hiện popup xác nhận
5. Xác nhận trên Ledger Nano X (như hướng dẫn ở phần Aave)
6. Chờ giao dịch được xác nhận trên blockchain

**Lưu ý**: Việc collect fees tốn phí gas riêng. Nếu số phí nhỏ, bạn có thể bỏ qua và rút luôn cả thanh khoản + phí.

---

## Bước 5: Remove Liquidity (Rút Thanh Khoản)

### 5.1 Chọn Số Lượng Muốn Rút

![Remove Liquidity](img/uniswap-remove-liquidity.png)

1. Click nút **"Remove liquidity"** hoặc **"Remove"**
2. Cửa sổ popup hiện ra
3. Chọn % thanh khoản muốn rút:
   - Kéo slider để chọn % (25%, 50%, 75%, 100%)
   - Hoặc click **"Max"** để rút toàn bộ
4. Kiểm tra preview:
   - **You will receive**: Số lượng mỗi token bạn sẽ nhận
   - **Current value**: Giá trị hiện tại (USD)
   - **Fees earned**: Phí đã kiếm (nếu chưa collect)

### 5.2 Xem Preview Token Amounts

![Token Preview](img/uniswap-token-preview.png)

**Quan trọng**: 

- Bạn sẽ nhận **CẢ HAI** token trong cặp
- Tỷ lệ token phụ thuộc vào giá hiện tại
- Ví dụ: Nếu cung cấp ETH/USDC, bạn sẽ nhận cả ETH và USDC
- Số lượng có thể khác với lúc bạn deposit do Impermanent Loss

### 5.3 Hiểu Về Impermanent Loss

⚠️ **Impermanent Loss (IL)** là rủi ro quan trọng:

**IL là gì?**
- Là "khoản lỗ tạm thời" khi giá token thay đổi so với lúc bạn cung cấp thanh khoản
- Bạn có thể nhận ít giá trị hơn so với việc đơn giản hold 2 token

**Ví dụ**:
- Bạn deposit: 1 ETH ($2,000) + 2,000 USDC
- Tổng: $4,000
- Sau 1 tháng ETH tăng lên $4,000
- Khi rút: 0.707 ETH + 2,828 USDC = ~$5,656
- Nếu hold: 1 ETH ($4,000) + 2,000 USDC = $6,000
- IL = $6,000 - $5,656 = $344

**IL được bù đắp bởi**:
- Phí giao dịch kiếm được
- Nếu phí > IL, bạn vẫn có lợi nhuận

---

## Bước 6: Xác Nhận Rút Thanh Khoản

### 6.1 Approve Token (Lần Đầu)

![Approve Transaction](img/uniswap-approve.png)

Nếu đây là lần đầu rút thanh khoản từ pool này:

1. Click nút **"Remove"** hoặc **"Approve"**
2. MetaMask hiện popup **"Approval"**
3. Đây là giao dịch cho phép Uniswap di chuyển LP tokens của bạn
4. Kiểm tra:
   - **Contract**: Địa chỉ Uniswap Pool
   - **Token**: LP token
   - **Spending cap**: Số lượng cho phép
5. Click **"Confirm"** trên MetaMask
6. Xác nhận trên Ledger Nano X
7. Chờ giao dịch Approval hoàn tất (~30 giây - 2 phút)

### 6.2 Remove Liquidity

![Remove Confirmation](img/uniswap-remove-confirm.png)

Sau khi Approval hoàn tất (hoặc nếu đã approve trước đó):

1. Click nút **"Remove"**
2. MetaMask hiện popup xác nhận giao dịch Remove
3. Kiểm tra thông tin:
   - **Gas fee**: Phí gas (có thể cao, $20-80)
   - **Total**: Tổng chi phí
4. Click **"Confirm"** trên MetaMask
5. Xác nhận trên Ledger:
   - Xem thông tin giao dịch
   - Cuộn qua các màn hình
   - Nhấn cả 2 nút khi thấy "Accept and send"

### 6.3 Chờ Xác Nhận

![Transaction Pending](img/uniswap-pending.png)

1. MetaMask hiển thị **"Pending"**
2. Click để xem chi tiết trên Etherscan
3. Thời gian xác nhận: 30 giây - 5 phút
4. Uniswap sẽ hiển thị thông báo khi hoàn tất

---

## Bước 7: Xác Nhận Thành Công

### 7.1 Kiểm Tra Trên Uniswap

![Remove Success](img/uniswap-success.png)

1. Uniswap hiển thị thông báo **"Transaction confirmed"** hoặc **"Success"**
2. Position biến mất khỏi danh sách (nếu rút 100%)
3. Hoặc giảm giá trị (nếu rút một phần)

### 7.2 Kiểm Tra Trong MetaMask

![MetaMask After Remove](img/metamask-after-remove.png)

1. Mở MetaMask
2. Kiểm tra số dư **CẢ HAI** token đã tăng lên
3. Ví dụ:
   - ETH balance tăng
   - USDC balance tăng
   - LP tokens giảm hoặc biến mất

### 7.3 Kiểm Tra Trên Etherscan

![Etherscan Uniswap TX](img/etherscan-uniswap.png)

1. Click **"View on Explorer"** hoặc vào Etherscan
2. Kiểm tra:
   - ✅ Status: **Success**
   - ✅ Tokens Transferred:
     - Burn LP tokens
     - Receive Token 0 (ví dụ: ETH)
     - Receive Token 1 (ví dụ: USDC)
   - ✅ Transaction Fee: Phí gas đã trả

---

## So Sánh Aave vs Uniswap

| Tiêu Chí | Aave | Uniswap |
|----------|------|---------|
| **Loại Protocol** | Lending/Borrowing | DEX (AMM) |
| **Gửi gì** | 1 token | 2 tokens (cặp) |
| **Nhận token gì** | aToken | LP token |
| **Kiếm lợi nhuận từ** | Lãi suất cho vay | Phí giao dịch swap |
| **APY** | Cố định/thay đổi theo thị trường | Phụ thuộc volume giao dịch |
| **Rủi ro chính** | Liquidation (nếu vay), Smart contract | Impermanent Loss, Smart contract |
| **Có thể vay không** | Có (dùng làm collateral) | Không |
| **Rút được gì** | Token gốc + lãi | Cả 2 tokens + phí |
| **Phí gas** | Thấp-trung bình | Cao (đặc biệt V3) |

---

## Xử Lý Sự Cố Uniswap

### ❌ Lỗi: "Price moved too much"

**Nguyên nhân**: Giá thay đổi trong lúc bạn xác nhận giao dịch

**Giải pháp**:
1. Click **"Settings"** (biểu tượng bánh răng)
2. Tăng **"Slippage tolerance"** lên 1-3%
3. Thử lại

### ❌ Lỗi: "Insufficient liquidity"

**Nguyên nhân**: Position đã bị rút hết hoặc lỗi hiển thị

**Giải pháp**:
1. Refresh trang
2. Kiểm tra lại LP tokens trong ví
3. Xem trên Etherscan xem còn LP tokens không

### ❌ Lỗi: "Transaction failed" với gas cao

**Nguyên nhân**: Gas limit không đủ hoặc transaction revert

**Giải pháp**:
1. Tăng gas limit lên 20-30%
2. Thử vào giờ thấp điểm
3. Kiểm tra xem position có còn tồn tại không

### ❌ Position không hiện trong Pool

**Giải pháp**:
1. Đảm bảo đúng network (Ethereum/Polygon/Arbitrum)
2. Đảm bảo đúng wallet address
3. Thử import position thủ công:
   - Click **"Import Pool"**
   - Chọn 2 tokens trong cặp
   - Click **"Import"**

### ❌ LP tokens không thấy trong MetaMask

**Giải pháp**:
1. Click **"Import tokens"** trong MetaMask
2. Nhập địa chỉ contract của LP token (tìm trên Etherscan)
3. LP token sẽ hiển thị

---

## Tips Tối Ưu Khi Sử Dụng Uniswap

### 💰 Tiết Kiệm Chi Phí

1. **Giao dịch vào giờ thấp điểm**:
   - Cuối tuần
   - Đêm khuya giờ UTC (00:00-08:00)
   - Gas thường giảm 50-70%

2. **Sử dụng Layer 2**:
   - Uniswap trên **Arbitrum**: Phí ~$1-3
   - Uniswap trên **Polygon**: Phí ~$0.01-0.5
   - Uniswap trên **Optimism**: Phí ~$1-5

3. **Batch operations**:
   - Collect fees cùng lúc với Remove liquidity
   - Giảm số lần giao dịch

### 📊 Quản Lý Position Hiệu Quả

1. **Chọn fee tier phù hợp**:
   - **0.05%**: Stablecoin pairs (USDC/USDT)
   - **0.3%**: Cặp phổ biến (ETH/USDC)
   - **1%**: Cặp exotic hoặc biến động cao

2. **Monitor Impermanent Loss**:
   - Sử dụng tools: https://dailydefi.org/tools/impermanent-loss-calculator/
   - Rút khi IL < Fees earned

3. **Set price alerts**:
   - Theo dõi khi giá ra khỏi range (V3)
   - Rebalance position nếu cần

### 🔒 Bảo Mật

1. **Revoke approvals** sau khi xong:
   - Truy cập: https://revoke.cash
   - Connect wallet
   - Revoke Uniswap allowances không dùng nữa

2. **Verify contract address**:
   - Uniswap V3 Factory: `0x1F98431c8aD98523631AE4a59f267346ea31F984`
   - Luôn double-check trên Etherscan

---

## Công Cụ Hữu Ích

### 📈 Tracking & Analytics

- **Uniswap Info**: https://info.uniswap.org/
  - Theo dõi volume, TVL của các pool
  - Xem lịch sử APR

- **Revert Finance**: https://revert.finance/
  - Phân tích chi tiết position
  - Tính toán IL và fees

- **APY.vision**: https://apy.vision/
  - So sánh APY của các pool
  - Backtest strategy

### ⛽ Gas Tracker

- **Etherscan Gas Tracker**: https://etherscan.io/gastracker
- **ETH Gas Station**: https://ethgasstation.info/
- **Blocknative Gas Estimator**: https://www.blocknative.com/gas-estimator

### 🔍 Portfolio Tracking

- **Zapper**: https://zapper.fi/
- **DeBank**: https://debank.com/
- **Zerion**: https://zerion.io/

---

## Các Câu Hỏi Thường Gặp (FAQ) - Uniswap

### ❓ Uniswap V2 và V3 khác nhau như thế nào?

**V2**:
- Thanh khoản trải đều từ giá 0 → ∞
- Đơn giản, dễ sử dụng
- APY thấp hơn

**V3**:
- Concentrated liquidity (thanh khoản tập trung)
- Chọn price range cụ thể
- APY cao hơn nhưng phức tạp hơn
- Cần quản lý tích cực

### ❓ Tôi có thể rút chỉ 1 token thôi được không?

Không, bạn phải rút cả 2 tokens theo tỷ lệ hiện tại của pool. Nếu muốn chỉ giữ 1 token, sau khi rút bạn cần swap token kia.

### ❓ Khi nào tôi nên rút thanh khoản?

Rút khi:
- Impermanent Loss quá lớn (>5-10%)
- Có cơ hội đầu tư tốt hơn
- Cần tiền mặt
- Giá ra khỏi range (V3) và không kiếm phí nữa

Không nên rút khi:
- Fees earned > IL
- Thị trường biến động tạm thời
- Phí gas quá cao

### ❓ Phí gas cao như vậy có đáng không?

Phụ thuộc vào:
- Số vốn: Nếu có >$10,000 trong pool, phí $50-100 chấp nhận được
- Thời gian: Nếu đã cung cấp thanh khoản lâu và kiếm nhiều phí, đáng
- Urgent: Nếu không cần gấp, đợi gas thấp

**Rule of thumb**: Phí gas nên <2% giá trị position

### ❓ Tôi có bị mất tiền khi rút không?

Không "mất" nhưng có thể nhận ít giá trị hơn do:
- **Impermanent Loss**: Giá thay đổi
- **Phí gas**: Chi phí transaction
- **Slippage**: Giá di chuyển khi execute

Tuy nhiên, bạn vẫn nhận lại tokens + fees đã kiếm.

### ❓ LP tokens của tôi ở đâu?

- **V2**: LP tokens ERC-20 nằm trong ví MetaMask
- **V3**: Position là NFT (ERC-721), có thể xem trong tab NFTs của MetaMask

### ❓ Tôi có thể transfer position cho người khác không?

- **V2**: Có, transfer LP tokens (ERC-20)
- **V3**: Có, transfer NFT position sang địa chỉ khác

---

## Kết Luận

Rút thanh khoản từ Uniswap cần hiểu rõ về:

✅ **Impermanent Loss** - Rủi ro chính của LP
✅ **Phí gas cao** - Đặc biệt trên Ethereum mainnet
✅ **Price range management** - Quan trọng với V3
✅ **Timing** - Rút khi IL thấp và fees cao

**So với Aave**, Uniswap:
- Phức tạp hơn (2 tokens, IL)
- Phí gas cao hơn
- Tiềm năng lợi nhuận cao hơn (trong thị trường biến động)
- Không có rủi ro liquidation

**Khuyến nghị**:
- Bắt đầu với số vốn nhỏ để học
- Sử dụng Layer 2 để giảm phí
- Monitor position thường xuyên
- Tính toán IL trước khi cung cấp thanh khoản

**Chúc bạn provide liquidity thành công! 💧🦄**

---

## Tài Liệu Tham Khảo

### Aave
- [Aave Documentation](https://docs.aave.com/)
- [MetaMask Support](https://support.metamask.io/)
- [Ledger Support](https://support.ledger.com/)
- [Etherscan](https://etherscan.io/)

### Uniswap
- [Uniswap V3 Documentation](https://docs.uniswap.org/)
- [Uniswap V2 Documentation](https://docs.uniswap.org/contracts/v2/overview)
- [Uniswap Support](https://support.uniswap.org/)
- [Impermanent Loss Calculator](https://dailydefi.org/tools/impermanent-loss-calculator/)
- [Uniswap Analytics](https://info.uniswap.org/)

---

*Tài liệu được cập nhật: Tháng 12/2025*
*Version: 2.0*
