MWL Store - E-commerce UI Project
Student Name & ID:

Lj Malinao [2023-2110278]
Frederico Warde [2023-2110278]
Hannah Leocario [2023-2110278]
Dumaguete Campus
Final Project - 2nd Semester A.Y. 2024 - 2025
College of Computer Studies and Engineering
Graphical User Interface Programming (GUIPRO)
________________________________________
PROJECT DESCRIPTION
MWL Store is a modern e-commerce mobile application UI built using Flutter. This project features a sleek and user-friendly interface for browsing and purchasing products. The store specializes in fashion and lifestyle items such as bags, shoes, clothes, pots, shorts, and pants. The overall theme focuses on simplicity, modern design aesthetics, and ease of navigation, providing a seamless shopping experience.
________________________________________
 Implemented Features
 Screens
Screen Name	Purpose	Key UI Elements
Splash Screen	Briefly displays the app logo before navigating to the home screen.	Large centered logo, teal background.
Home Screen	Displays product categories and a grid of product items.	Category filter chips, product grid cards, cart icon on AppBar.
Product Detail Screen	Shows detailed information about a selected product.	Product image, name, price, and 'Add to Cart' button.
Cart Screen	Lists all products added to the cart and displays the total price.	Product list with images, total amount, and 'Proceed to Checkout' button.
Checkout Screen	Collects user information and payment method before placing an order.	Form fields for name, address, payment method radio buttons, 'Place Order' button.
Order Confirmation Screen	Confirms successful order placement with a thank you message.	Success icon, confirmation text, 'Back to Home' button.
Additional UI Features
●	Category Filtering: Filter products by selecting a category chip.

●	Snackbars for Cart Addition: Confirmation messages when adding products to the cart.

●	Navigation Routes: Smooth transitions between screens.

●	Responsive Grid Layout for product listing.

●	Custom Widgets: Reusable ProductCard and CategoryFilter components.

________________________________________
Unique Design Choices & Creativity
 Niche & Concept
The store targets young adults and casual shoppers looking for affordable yet stylish fashion and lifestyle products. The product mix is designed to appeal to modern minimalists.
Color Palette
●	Primary Color: Teal (#008080) – symbolizes trust, balance, and calmness.

●	Accent Colors: White and light grey for a clean and modern look.

 Typography & Iconography
●	Typography: Default Flutter fonts with emphasis on bold headings and readable body text.

●	Icons: Material icons for cart, checkmarks, and navigation, ensuring consistency and familiarity.

 Custom Widgets
●	CategoryFilter Widget: A horizontally scrollable chip selector for product categories.

●	ProductCard Widget: Interactive card displaying product image and details with tap navigation.

Screenshots (Add these manually in actual README)
●	Home Screen (Product Grid)

●	Product Detail Screen

●	Cart Screen

●	Checkout Form

●	Order Confirmation

________________________________________
Challenges Faced & Solutions
1. State Management for Cart Functionality
●	Challenge: Managing cart items and ensuring real-time updates across screens.

●	Solution: Implemented a simple singleton-like CartManager class to hold and manage cart data. Used setState to trigger UI updates.

2. Passing Data Between Screens
●	Challenge: Efficiently passing product data to the Product Detail screen.

●	Solution: Used Flutter's Navigator.pushNamed with arguments to pass product objects cleanly to detail pages.

________________________________________
 Conclusion
The MWL Store UI Project successfully demonstrates a fully functional e-commerce front-end interface using Flutter, focusing on clean UI/UX design principles, modular components, and efficient navigation flow.
