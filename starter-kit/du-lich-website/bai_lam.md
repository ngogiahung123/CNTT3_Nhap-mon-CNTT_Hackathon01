# BÀI LÀM – HACKATHON 01

- **Mã đề:** 19
- **Họ tên: Ngô Gia Hưng** 
- **Lớp: CNTT3** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS): Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Force
mv .\lich_trinh.txt .\docs
mv .\logo_du_lich.png .\media
cp .\media\logo_du_lich.png .\backup
rm .\temp_274.tmp
cd .\logs
ls
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
    Directory: C:\Thi\starter-kit\du-lich-website


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
d-----        28/10/2026  10:58 SA                backup                                      
d-----        28/10/2026  10:52 SA                data                                        
d-----        28/10/2026  10:56 SA                docs                                        
d-----        28/10/2026  10:51 SA                logs                                        
d-----        28/10/2026  10:57 SA                media                                       
-a----        27/10/2026   1:32 SA             66 .env                                        
-a----        27/10/2026   1:32 SA           2224 bai_lam.md                                  


    Directory: C:\Thi\starter-kit\du-lich-website\backup


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        27/10/2026   1:32 SA           4471 logo_du_lich.png                            


    Directory: C:\Thi\starter-kit\du-lich-website\data


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        27/10/2026   1:32 SA           6087 dat_tour_thang_8.xlsx                       


    Directory: C:\Thi\starter-kit\du-lich-website\docs


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        27/10/2026   1:32 SA             58 lich_trinh.txt                              


    Directory: C:\Thi\starter-kit\du-lich-website\logs


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        27/10/2026   1:32 SA           1044 travel.log                                  


    Directory: C:\Thi\starter-kit\du-lich-website\media


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        27/10/2026   1:32 SA           4471 logo_du_lich.png                            


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\travel.log | Select-String "ERROR" > .\logs\dayly_report.txt
Get-Content .\logs\dayly_report.txt -head 2

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-08-28 08:30:34 [ERROR] Khong tim thay trang /tour-he (404)
2026-08-28 08:36:34 [ERROR] Giu cho that bai
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_report.ps1
```

### Kết quả hiển thị

```text
Dang loc log...
Hoan thanh!




===BAO CAO LOI===

2026-08-28 08:30:34 [ERROR] Khong tim thay trang /tour-he (404)
2026-08-28 08:36:34 [ERROR] Giu cho that bai
2026-08-28 08:42:34 [ERROR] Het thoi gian cho (timeout)
2026-08-28 08:51:34 [ERROR] Giu cho that bai
2026-08-28 08:54:34 [ERROR] Khong tim thay trang /tour-he (404)
2026-08-28 09:09:34 [ERROR] Khong tim thay trang /tour-he (404)

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(Get-Content .\logs\travel.log | Select-String "ERROR").count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
ni .\logs\tong_hop.txt
"===TONG HOP LOG===" > .\logs\tong_hop.txt
Get-Content .\logs\travel.log | Select-String "WARNING" >> .\logs\tong_hop.txt
(Get-Content .\logs\travel.log | Select-String "ERROR").count >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===

2026-08-28 08:33:34 [WARNING] Thoi gian tai trang cham
2026-08-28 08:45:34 [WARNING] Thoi gian tai trang cham
2026-08-28 09:15:34 [WARNING] Thoi gian tai trang cham


6
```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_tour_thang_8.xlsx`, không cần ghi vào đây.
