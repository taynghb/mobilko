import 'package:flutter/material.dart';

void main() {
  runApp(const Organizer());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 148, 162),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 65),
                const Text(
                  'medinow',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Meditate With Us!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 37,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 37,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD7F5F6),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Continue with Email or Phone',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue With Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),

                const SizedBox(height: 90),
                Image.asset(
                  'assets/images/photo1.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
      title: "ffff",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 48, 157, 165))),
    );
  }
}
class EasyTwo extends StatelessWidget{
  const EasyTwo({super.key});
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Картинка
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/photo2.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Peter Mach',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Mind Deep Relax',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Join the Community as we prepare over 33 days '
                    'to relax and feel joy with the mind and happiness '
                    'session across the World.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 43,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0AA6A8),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow_outlined,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Play Next Session',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SessionItem(
                    title: 'Sweet Memories',
                    subtitle: 'December 29 Pre-Launch',
                    color: Color(0xFF287BE5),
                  ),
                  const SessionItem(
                    title: 'A Day Dream',
                    subtitle: 'December 29 Pre-Launch',
                    color: Color(0xFF08A5A8),
                  ),
                  const SessionItem(
                    title: 'Mind Explore',
                    subtitle: 'December 29 Pre-Launch',
                    color: Color(0xFFFF922E),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class SessionItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const SessionItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(9),
            ),
            child: const Icon(
              Icons.play_arrow_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_horiz,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBEFF2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Text(
                    'Popular Menu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF0F2F7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBEFF2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const MenuItem(
                title: 'Original salad',
                desc: 'Lovy food',
                price: '\$8',
                img: 'assets/images/salad2.jpg',
              ),
              const SizedBox(height: 12),
              const MenuItem(
                title: 'Fresh salad',
                desc: 'Cloudy Resto',
                price: '\$10',
                img: 'assets/images/salad1.jpg',
              ),
              const SizedBox(height: 12),
              const MenuItem(
                title: 'Yummie Ice Cream',
                desc: 'Circlo Resto',
                price: '\$6',
                img: 'assets/images/icecream.jpg',
              ),
              const SizedBox(height: 12),
              const MenuItem(
                title: 'Vegan Special',
                desc: 'Haty Food',
                price: '\$11',
                img: 'assets/images/salad3.jpg',
              ),
              const SizedBox(height: 12),
              const MenuItem(
                title: 'Mixed Pasta',
                desc: 'Recto Food',
                price: '\$13',
                img: 'assets/images/salad4.jpg',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      ),
    );
  }
}
class MenuItem extends StatelessWidget{
  final String title;
  final String desc;
  final String price;
  final String img;
  const MenuItem({
    super.key,
    required this.title,
    required this.desc,
    required this.price,
    required this.img,
  });
@override
  Widget build(BuildContext context){
    return Container(
      height:80,
      padding:const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
       child: Row(
        children: [
          ClipRRect(
             borderRadius: BorderRadius.circular(9), 
             child: Image.asset(img, height: 52, 
             width: 52, fit: BoxFit.cover),
          ),
         SizedBox(width:16),
             Expanded(child: 
                Column(children: [
                  Text(title, style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 4,),
                  Text(desc, style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
                ),
                ),
                Text(price, style: TextStyle(fontSize: 20,
                color: Colors.redAccent, fontWeight: FontWeight.bold)),
              ],  
            ),
    );
  }
}
class Organizer extends StatelessWidget {
  const Organizer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: Color(0xFF6675FF),
                      ),
                    ),

                    const Text(
                      'Organizer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F1FF),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Color(0xFF6675FF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              ClipOval(
                child: Image.asset(
                  'assets/images/facecard.jpg',
                  width: 96,
                  height: 96,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Albert Flores',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Expanded(
                    child: _Statistic(
                      number: '2.368',
                      title: 'Followers',
                    ),
                  ),

                  Container(
                    width: 1,
                    height: 55,
                    color: const Color(0xFFE8E8E8),
                  ),

                  Expanded(
                    child: _Statistic(
                      number: '346',
                      title: 'Following',
                    ),
                  ),

                  Container(
                    width: 1,
                    height: 55,
                    color: const Color(0xFFE8E8E8),
                  ),

                  Expanded(
                    child: _Statistic(
                      number: '13',
                      title: 'Events',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Container(
                height: 1,
                color: const Color(0xFFE8E8E8),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Expanded(
                    child: _MainButton(
                      title: 'Follow',
                      icon: Icons.person_add,
                      filled: true,
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: _MainButton(
                      title: 'Messages',
                      icon: Icons.message,
                      filled: false,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 38),

              Row(
                children: [
                  Expanded(
                    child: _TabButton(
                      title: 'About',
                      selected: true,
                    ),
                  ),

                  const SizedBox(width: 6),

                  Expanded(
                    child: _TabButton(
                      title: 'Events',
                      selected: false,
                    ),
                  ),

                  const SizedBox(width: 6),

                  Expanded(
                    child: _TabButton(
                      title: 'Reviews',
                      selected: false,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.6,
                    color: Color(0xFF4D5562),
                  ),
                ),
              ),

              const SizedBox(height: 2),

              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Read more...',
                    style: TextStyle(
                      color: Color(0xFF6675FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
class _Statistic extends StatelessWidget {
  final String number;
  final String title;

  const _Statistic({
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 7),

        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF303642),
          ),
        ),
      ],
    );
  }
}
class _MainButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool filled;
  final VoidCallback onPressed;

  const _MainButton({
    required this.title,
    required this.icon,
    required this.filled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 15,
        ),
        label: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: filled
              ? const Color(0xFF6975F5)
              : Colors.white,
          foregroundColor: filled
              ? Colors.white
              : const Color(0xFF6975F5),
          elevation: 0,
          side: filled
              ? null
              : const BorderSide(
                  color: Color(0xFF6975F5),
                  width: 1.5,
                ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
    );
  }
}
class _TabButton extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabButton({
    required this.title,
    required this.selected,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xFF6975F5)
            : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: selected
            ? null
            : Border.all(
                color: const Color(0xFF6975F5),
                width: 1.5,
              ),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: selected
              ? Colors.white
              : const Color(0xFF6975F5),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}