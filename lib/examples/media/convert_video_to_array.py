def h264_to_array(input_file, output_file):
    with open(input_file, 'rb') as f:
        data = f.read()

    # Chuyển đổi dữ liệu thành chuỗi hex và thêm '0x' vào mỗi cặp hex
    hex_data = ', '.join([f"0x{x:02x}" for x in data])

    # Tạo ra nội dung của tệp .h với mảng dữ liệu và độ dài của mảng
    output_str = f"unsigned char ___media_video_h264[] = {{{hex_data}}};\n"
    output_str += f"unsigned int ___media_video_h264_len = {len(data)};"

    # Ghi nội dung vào tệp .h
    with open(output_file, 'w') as f:
        f.write(output_str)

h264_to_array('video.h264', 'video.h264.h')
