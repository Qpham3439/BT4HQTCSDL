# BT4HQTCSDL
Bài tập 04 của sinh viên: K225480106057 - Phạm Mạnh Quỳnh - môn Hệ Quản Trị CSDL.
- Bai tap 4: (sql server)
- Yêu cầu bài toán:
  + Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
  + Nguồn dữ liệu: TMS.tnut.edu.vn
  + Tạo các bảng tuỳ ý (3nf)
  + Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
  + Trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

- Các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. Tạo file readme.md, edit online nó:
   + Paste những ảnh chụp màn hình
   + Gõ text mô tả cho ảnh đó
- Gợi ý:
  + Sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  + Tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)

- Deadline: 15/4/2025.
----------------------------------------------------------------------------------------------
CÁC BƯỚC THỰC HIỆN:
- Bước 1: Database mới có tên là QL_TKB.
![Screenshot 2025-04-15 162555](https://github.com/user-attachments/assets/10a88dc9-7da5-4611-acf9-31fbf0ae639c)

- Bước 2: Tạo các bảng có tên: MonHoc, Lop, GV, PhongHoc, LichHoc theo chuẩn 3NF:
![Screenshot 2025-04-15 162922](https://github.com/user-attachments/assets/b2a4f1a1-051d-4ab8-a767-59a025332405)
![Screenshot 2025-04-15 163048](https://github.com/user-attachments/assets/f3a0fc31-71fa-4cb6-a672-65a7b89f5178)
![Screenshot 2025-04-15 163344](https://github.com/user-attachments/assets/904c9abd-9a1a-4df8-91cf-f8aaeb41aa19)
![Screenshot 2025-04-15 163547](https://github.com/user-attachments/assets/bd16c1ae-bd58-4404-ad27-0dce48a6f6b5)
![Screenshot 2025-04-15 164008](https://github.com/user-attachments/assets/f4834684-2b79-45b8-a73c-bca8a0e2e60a)

- Bước 3: Thực hiện đặt các khóa chinh và các khóa ngoại liên kết để thu được sơ đồ liên kết:
![Screenshot 2025-04-15 164716](https://github.com/user-attachments/assets/f9e20f43-29cc-42f6-8309-5c9c63fed6b3)

- Bước 4: Copy dữ liệu từ nguồn TMS.tnut.edu.vn, patse vào Excel sau đó thực hiện dán các dữ liệu cần thiết vào các bảng ở mục edit bảng trong sql:
![Screenshot 2025-04-15 175315](https://github.com/user-attachments/assets/e317de6a-4bbb-4b0f-b99b-a66e88756cab)
![Screenshot 2025-04-15 175230](https://github.com/user-attachments/assets/d7fdfc46-0700-4eb5-9ff7-254e8aee85ae)
![Screenshot 2025-04-15 175310](https://github.com/user-attachments/assets/68c05581-77dc-4b6f-9bd4-a5a341451c21)
![Screenshot 2025-04-15 175259](https://github.com/user-attachments/assets/46aef905-4849-4ce4-85df-1f48404afab5)
![Screenshot 2025-04-15 175248](https://github.com/user-attachments/assets/79f152f8-6608-4c82-b011-6fd9b3347976)
![Screenshot 2025-04-15 175238](https://github.com/user-attachments/assets/955b4802-4d27-4d16-af9a-745a2d411f36)

- Bước 5: Truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra:
![Screenshot 2025-04-15 180027](https://github.com/user-attachments/assets/40675a2c-0fb7-4a46-8b4f-29a659a3fe8a)

- Trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy:
![Screenshot 2025-04-15 180331](https://github.com/user-attachments/assets/5b051cd6-3855-49d9-abe3-8edb76458b4b)
