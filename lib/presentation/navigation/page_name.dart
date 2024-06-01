enum PagesName{
  ///splash_page
  splashPage(title: "Splash Page",path: "/"),

  homePage(title: "Home Page",path: "/home-page"),
  loginPage(title: "Login Page",path: "/login-page"),
  registrationPage(title: "Registration Page",path: "/registration-page"),
  profilePage(title: "Profile Page",path: "/profile-page"),
  categoryPage(title: "Category Page",path: "/category-page"),
  searchPage(title: "Search page",path: "/search-page"),
  cartPage(title: "Cart page",path: "/cart-page");

  const PagesName({required this.title, required this.path});
  final String title;
  final String path;
}