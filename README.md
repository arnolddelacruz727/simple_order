<div align="center">

# 🍛 Simple Order

**A Dart console program that prints a canteen order receipt.**

![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)
![Lab](https://img.shields.io/badge/MOBPROG-Lab%2001a-blueviolet)
![Status](https://img.shields.io/badge/status-done-brightgreen)

</div>

---

## 👤 Author

| | |
|---|---|
| **Name** | Ash |
| **Section** | BSIT251D, National University Laguna |
| **Course** | MOBPROG, Mobile App Development (Flutter) |
| **Exercise** | Lab 01a: Dart Warm-Up |

## ✨ What it does

- Stores the menu in a `const` map
- Models each order line with an `OrderItem` class (`final` fields and a `subtotal` getter)
- Adds up the order with `fold`
- Prints `Guest` when no customer name is given
- Gives **10% off** when the subtotal is 300 or more

## 🍽️ Menu

| Item | Price |
|---|---|
| Adobo rice | ₱85.00 |
| Iced tea | ₱35.00 |
| Turon | ₱25.00 |

## 🧾 Sample output

**Order 1: no customer name, discount applies**

```
Order for Guest
3 x Adobo rice  255.00
1 x Iced tea  35.00
3 x Turon  75.00
Subtotal  365.00
Discount 10%  -36.50
Total  328.50
```

**Order 2: named customer, below 300, no discount**

```
Order for Ana
1 x Adobo rice  85.00
1 x Iced tea  35.00
Subtotal  120.00
Total  120.00
```

## ▶️ How to run

```bash
dart run
```
