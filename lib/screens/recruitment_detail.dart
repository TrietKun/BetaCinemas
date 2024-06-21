import 'package:flutter/material.dart';

class RecruitmentDetail extends StatelessWidget {
  const RecruitmentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: _SliverAppBarDelegate(
                minHeight: 60.0,
                maxHeight: 100.0,
                child: Container(
                  color: Colors.transparent,
                  child: AppBar(
                    title: const Text(
                      'Tuyển dụng',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.blue[300],
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(500),
                        bottomRight: Radius.circular(500),
                      ),
                      color: Colors.grey,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: const Text(
                        'THÔNG TIN TUYỂN DỤNG',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Image(
                      image: AssetImage('assets/images/td.png'),
                      width: 350,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: const Text(
                        'GIA NHẬP CÙNG GIA ĐÌNH BETA MEDIA',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        textAlign: TextAlign.justify, // Căn đều văn bản
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Công ty cổ phần Beta Media trực thuộc Beta Group kinh doanh trong nhiều lĩnh vực giải trí. Beta Cinemas là một trong top 5 cụm rạp chiếu phim có tốc độ tăng trưởng nhanh nhất tại Việt Nam.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'Beta Media luôn mong muốn mang đến nhiều cơ hội việc làm với môi trường làm việc năng động, trẻ trung, chuyên nghiệp và yêu thích ngành công nghiệp điện ảnh. Beta luôn hướng đến phát triển dịch vụ giải trí hàng đầu Việt Nam.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'Để gia nhập gia đình Beta và cháy trọn tuổi trẻ, bạn có thể tham khảo một số cách dưới đây nhé: ',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Image(
                      image: AssetImage('assets/images/td2.png'),
                      width: 350,
                    ),
                  ),
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Vd: [NGUYỄN VĂN A] - Ứng tuyển [MARKETING ONLINE] - [VĂN PHÒNG HÀ NỘI]\n\n'
                      '2. Đăng ký ứng tuyển qua kênh online\n\n'
                      'Inbox fanpage Beta Cinemas\n\n'
                      '3. Nộp hồ sơ trực tiếp tại Quầy hướng dẫn của các cụm rạp Beta Cinemas ứng viên mong muốn làm việc\n\n'
                      'LƯU Ý:\n\n'
                      'Beta Media tuyển dụng không tốn bất kỳ chi phí nào. TUYỆT ĐỐI không nộp phí dưới bất kỳ hình thức nào\n\n'
                      'Beta Media sẽ liên hệ với ứng viên phù hợp qua email / điện thoại\n\n'
                      'Chúng tôi chào đón các bạn đến với môi trường làm việc năng động, chuyên nghiệp và nhiều đãi ngộ.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  )),
                  // Các phần tử của trang chi tiết tuyển dụng
                ],
              ),
            ),
            // Các phần còn lại của ListView nếu có
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
