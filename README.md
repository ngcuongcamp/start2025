# start2025

## Layout
### Container 
### Column 

#### `crossAxisAligments` 
- là thuộc tính sử dụng để `căn chỉnh con theo chiều hướng vuông góc với trục chính (cross-axis)
- trong `Column`, `trục chính (mainAxis)` là `trục dọc`, nên `crossAxisAligment` căn chỉnh theo `chiều ngang`
- trong `Row`, `trục chính (mainAxis)` là `trục ngang`, nên `crossAxisAligment` căn chỉnh theo `chiều dọc`

    + `CrossAxisAlignment.start`: căn trái (`Column`), căn trên (`Row`)
    + `CrossAxisAlignment.end`: căn phải (`Column`), căn dưới (`Row`)
    + `CrossAxisAlignment.center`: căn giữa theo chiều ngang (`Column`), chiều dọc (`Row`)
    + `CrossAxisAlignment.stretch`: kéo dãn toàn bộ theo chiều ngang(`Column`), chiều dọc (`Row`), nếu con có `with`(`Column`) hoặc `height`(`Row`), nó sẽ không `stretch` được

#### `mainAxisAlignment`
- `mainAxisAlignment` căn chỉnh theo trục chính (`mainAxis`)
- trong `Column` -> căn chỉnh theo `chiều dọc `
- trong `Row` -> căn chỉnh theo `chiều ngang`

    + `mainAxisAlignment.start`: dính lên trên cùng (`Column`), dính về bên trái (`Row`)
    + `mainAxisAlignment.end`: dính xuống dưới cùng (`Column`), dính về bên phải (`Row`)
    + `mainAxisAlignment.center`: căn giữa theo chiều dọc (`Column`), chiều ngang (`Row`)
    + `mainAxisAlignment.spaceBetween`: giãn đều (không có khoảng trắng ở 2 đầu)
    + `mainAxisAlignment.spaceAround`: giãn đều (có khoảng trắng ở 2 đầu bằng 1/2 khoảng trống giữa các con`)
    + `mainAxisAlignment.spaceEvenly`: giãn đều (có khoảng trắng ở 2 đầu bằng khoảng trống giữa các con)


#### `mainAxisSize`
- quyết định kích thước của `Column` hoặc `Row` trên trục chính (`mainAxis`)
- không ảnh hưởng đến con bên trong, chỉ thay đổi kích thuớ của `Column`, `Row`
    + `MainAxisSize.max` -> chiếm hết không gian theo `mainAxis`
    + `MainAxisSize.min` -> chỉ chiếm vừa đủ chỗ chứa con theo `mainAxis`

#### `Stack` 
- `Stack` là một widget giúp xếp chồng các widget lên nhau theo trật tự từ dưới lên trên 

```
body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
```


#### `ListTile` 
- `ListTile` là một widget giúp tạo ra một danh sách có thể nhấp vào và có tiêu đề, phụ đề, icon, hình ảnh, nút bấm một cách dễ dàng 
```
ListTile(
            leading: Icon(Icons.join_full), // icon ben trai
            tileColor: Colors.redAccent,
            title: Text('Title here'), // tieu de chinh
            subtitle: Text('Subtitle...'), // phu de (mo ta)
            trailing: Icon(Icons.account_tree_outlined), // icon ben phai
            onTap: () {
              print('tapped on list tile');
            },
          )
```

- Các thuộc tính quan trọng của ListTile 
+ `leading` : widget ở bên trái, thường là `Icon` hoặc `CircleAvatar` 
+ `title`: tiêu đề chính, thường là `Text` 
+ `subtitle`: phụ đề, thường là `Text` 
+ `trailing`: widget ở bên phải, thường là `Icon, Switch, Checkbox hoặc Text`
+ `contentPadding`: Padding giữa nội dung và viền `ListTile` 
+ `tileColor`: màu nền của `ListTile` 
+ `onTap`: hàm gọi sự kiện nhấn vào `ListTile` 
+ `onLongPress`: hàm gọi khi giữ lâu vào `ListTile`
