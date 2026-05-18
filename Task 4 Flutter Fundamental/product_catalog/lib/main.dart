import 'package:flutter/material.dart';

// ══════════════════════════════════════════════
//  ENTRY POINT
// ══════════════════════════════════════════════

void main() {
  runApp(const MyApp());
}

// ══════════════════════════════════════════════
//  ROOT APP
// ══════════════════════════════════════════════

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Catalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE24B4A),
        ),
        useMaterial3: true,
      ),
      home: const ProductCatalogPage(),
    );
  }
}

// ══════════════════════════════════════════════
//  DATA MODEL
// ══════════════════════════════════════════════

class Product {
  final String name;
  final double price;
  final double originalPrice;
  final int discount;
  final String imageUrl;
  final String category;

  const Product({
    required this.name,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.imageUrl,
    required this.category,
  });
}

// ══════════════════════════════════════════════
//  DATA PRODUK
// ══════════════════════════════════════════════

const List<Product> allProducts = [
  Product(
    name: 'Mint Leather Sneakers',
    price: 212.5,
    originalPrice: 250,
    discount: 15,
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&fit=crop',
    category: 'Shoes',
  ),
  Product(
    name: 'Classic White Sneakers',
    price: 180.0,
    originalPrice: 200,
    discount: 10,
    imageUrl: 'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=400&fit=crop',
    category: 'Shoes',
  ),
  Product(
    name: 'Running Pro Boost',
    price: 320.0,
    originalPrice: 380,
    discount: 16,
    imageUrl: 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=400&fit=crop',
    category: 'Shoes',
  ),
  Product(
    name: 'Casual Canvas Loafers',
    price: 95.0,
    originalPrice: 110,
    discount: 13,
    imageUrl: 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=400&fit=crop',
    category: 'Shoes',
  ),
  Product(
    name: 'Dark Wash Denim Jacket',
    price: 212.5,
    originalPrice: 250,
    discount: 15,
    imageUrl: 'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?w=400&fit=crop',
    category: 'Tshirt',
  ),
  Product(
    name: 'Plain White Oversized Tee',
    price: 55.0,
    originalPrice: 70,
    discount: 21,
    imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&fit=crop',
    category: 'Tshirt',
  ),
  Product(
    name: 'Slim Fit Black Polo',
    price: 75.0,
    originalPrice: 90,
    discount: 17,
    imageUrl: 'https://images.unsplash.com/photo-1586790170083-2f9ceadc732d?w=400&fit=crop',
    category: 'Tshirt',
  ),
  Product(
    name: 'Canvas Tote Bag',
    price: 95.0,
    originalPrice: 120,
    discount: 20,
    imageUrl: 'https://images.unsplash.com/photo-1547949003-9792a18a2601?w=400&fit=crop',
    category: 'Bag',
  ),
  Product(
    name: 'Leather Crossbody Bag',
    price: 155.0,
    originalPrice: 190,
    discount: 18,
    imageUrl: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=400&fit=crop',
    category: 'Bag',
  ),
  Product(
    name: 'Backpack Urban Explorer',
    price: 200.0,
    originalPrice: 240,
    discount: 17,
    imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400&fit=crop',
    category: 'Bag',
  ),
  Product(
    name: 'Summer Floral Dress',
    price: 145.0,
    originalPrice: 180,
    discount: 19,
    imageUrl: 'https://images.unsplash.com/photo-1495385794356-15371f348c31?w=400&fit=crop',
    category: 'Dress',
  ),
  Product(
    name: 'Minimalist Wrap Dress',
    price: 130.0,
    originalPrice: 160,
    discount: 19,
    imageUrl: 'https://images.unsplash.com/photo-1539008835657-9e8e9680c956?w=400&fit=crop',
    category: 'Dress',
  ),
  Product(
    name: 'Urban Sport Watch',
    price: 180.0,
    originalPrice: 200,
    discount: 10,
    imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&fit=crop',
    category: 'Watch',
  ),
  Product(
    name: 'Classic Leather Chronograph',
    price: 350.0,
    originalPrice: 420,
    discount: 17,
    imageUrl: 'https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?w=400&fit=crop',
    category: 'Watch',
  ),
  Product(
    name: 'Smart Digital Watch',
    price: 275.0,
    originalPrice: 310,
    discount: 11,
    imageUrl: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=400&fit=crop',
    category: 'Watch',
  ),
];

// ══════════════════════════════════════════════
//  DATA KATEGORI
// ══════════════════════════════════════════════

const List<Map<String, dynamic>> categories = [
  {'name': 'Shoes',  'icon': Icons.directions_walk},
  {'name': 'Tshirt', 'icon': Icons.checkroom},
  {'name': 'Bag',    'icon': Icons.shopping_bag},
  {'name': 'Dress',  'icon': Icons.dry_cleaning},
  {'name': 'Watch',  'icon': Icons.watch},
];

// ══════════════════════════════════════════════
//  WARNA UTAMA
// ══════════════════════════════════════════════

const Color kRed      = Color(0xFFE24B4A);
const Color kRedLight = Color(0xFFFAECE7);
const Color kGrey100  = Color(0xFFF5F5F5);
const Color kGrey300  = Color(0xFFE0E0E0);
const Color kGrey500  = Color(0xFF9E9E9E);
const Color kTextDark = Color(0xFF1A1A1A);
const Color kTextMuted= Color(0xFF757575);

// ══════════════════════════════════════════════
//  HALAMAN UTAMA
// ══════════════════════════════════════════════

class ProductCatalogPage extends StatefulWidget {
  const ProductCatalogPage({super.key});

  @override
  State<ProductCatalogPage> createState() => _ProductCatalogPageState();
}

class _ProductCatalogPageState extends State<ProductCatalogPage> {
  String _selectedCategory = 'Shoes';

  List<Product> get _filteredProducts =>
      allProducts.where((p) => p.category == _selectedCategory).toList();

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredProducts;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kTextDark,
            letterSpacing: -0.5,
          ),
        ),
      ),

      // ─────────────────────────────────────────
      // ListView — scroll vertikal
      // ─────────────────────────────────────────
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 4),
          _buildSearchBar(),
          const SizedBox(height: 20),
          _buildCategorySection(),
          const SizedBox(height: 24),
          _buildProductHeader(filtered.length),
          const SizedBox(height: 14),
          _buildProductGrid(filtered),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────
  // SEARCH BAR
  // ROW (icon + teks horizontal)
  // ─────────────────────────────────────────────

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
        color: kGrey100,
        borderRadius: BorderRadius.circular(32),
      ),
      // Row
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Search men fashion...',
              style: TextStyle(color: kGrey500, fontSize: 14),
            ),
          ),
          Icon(Icons.search_rounded, color: kGrey500, size: 22),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────
  // KATEGORI
  // ListView horizontal + Column per item
  // ─────────────────────────────────────────────

  Widget _buildCategorySection() {
    return SizedBox(
      height: 92,
      // ListView — scroll horizontal
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          final cat      = categories[index];
          final isActive = _selectedCategory == cat['name'];

          return GestureDetector(
            onTap: () => setState(() => _selectedCategory = cat['name'] as String),

            // Column
            // Ikon di atas, nama kategori di bawah
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    color: isActive ? kRed : kRedLight,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: isActive ? kRed : Colors.transparent,
                      width: 2.5,
                    ),
                    boxShadow: isActive
                        ? [BoxShadow(color: kRed.withOpacity(0.30), blurRadius: 10, offset: const Offset(0, 4))]
                        : [],
                  ),
                  child: Icon(
                    cat['icon'] as IconData,
                    color: isActive ? Colors.white : kRed,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  cat['name'] as String,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
                    color: isActive ? kRed : kTextMuted,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // ─────────────────────────────────────────────
  // HEADER JUMLAH PRODUK
  // Row + Column
  // ─────────────────────────────────────────────

  Widget _buildProductHeader(int count) {
    // Row — teks kiri, tombol kanan
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Column — judul & subtitle vertikal
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$count Products',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kTextDark,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Based on your filter',
              style: TextStyle(fontSize: 13, color: kTextMuted),
            ),
          ],
        ),
        // Row — 2 tombol toggle view
        Row(
          children: [
            _viewToggleBtn(Icons.list_rounded, isActive: false),
            const SizedBox(width: 8),
            _viewToggleBtn(Icons.grid_view_rounded, isActive: true),
          ],
        ),
      ],
    );
  }

  Widget _viewToggleBtn(IconData icon, {required bool isActive}) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: isActive ? kRedLight : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: isActive ? kRed : kGrey300, width: isActive ? 1.5 : 1),
      ),
      child: Icon(icon, size: 20, color: isActive ? kRed : kGrey500),
    );
  }

  // ─────────────────────────────────────────────
  // GRID PRODUK 2 KOLOM
  // Column (baris) + Row (2 produk/baris)
  // ─────────────────────────────────────────────

  Widget _buildProductGrid(List<Product> items) {
    if (items.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search_off_rounded, size: 48, color: kGrey300),
              const SizedBox(height: 12),
              Text('Tidak ada produk.', style: TextStyle(color: kTextMuted, fontSize: 14)),
            ],
          ),
        ),
      );
    }

    final List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 2) {
      rows.add(
        // Row — 2 produk per baris horizontal
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildProductCard(items[i])),
            const SizedBox(width: 14),
            Expanded(
              child: (i + 1 < items.length)
                  ? _buildProductCard(items[i + 1])
                  : const SizedBox(),
            ),
          ],
        ),
      );
      rows.add(const SizedBox(height: 14));
    }

    // Column — susun baris produk vertikal
    return Column(children: rows);
  }

  // ─────────────────────────────────────────────
  // KARTU PRODUK INDIVIDUAL
  // Column + Row + Image.network
  // ─────────────────────────────────────────────

  Widget _buildProductCard(Product product) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,

      // Column — gambar atas, info bawah
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Image.network
          // Mengambil gambar produk dari URL internet
          SizedBox(
            height: 145,
            width: double.infinity,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: kGrey100,
                  child: Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        color: kRed,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: kGrey100,
                  child: Center(
                    child: Icon(Icons.broken_image_rounded, color: kGrey300, size: 36),
                  ),
                );
              },
            ),
          ),

          // Info produk
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 12),
            // Column — nama atas, harga bawah
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: kTextDark,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // Row — harga + coret + badge diskon
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${product.price % 1 == 0 ? product.price.toInt() : product.price}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: kTextDark,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '\$${product.originalPrice.toInt()}',
                      style: TextStyle(
                        fontSize: 11,
                        color: kGrey500,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: kGrey500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: kRed,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        '${product.discount}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}