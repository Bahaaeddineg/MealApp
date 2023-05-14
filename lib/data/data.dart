// ignore: non_constant_identifier_names
final List categories_list = [
  Categories(category: 'Sandwitch', image: 'sandwitchCat.jpg',id:'1'),
  Categories(category: 'Hamburger', image: 'hamburgerCat.jpg',id:'2'),
  Categories(category: 'Pizza', image: 'pizzaCat.jpg',id:'3'),
  Categories(category: 'Plats', image: 'platCat.jpg',id:'4'),
  Categories(category: 'Salade', image: 'saladeCat.jpg',id:'5'),
  Categories(category: 'Soufflé', image: 'souffletCat.jpg',id:'6'),
  Categories(category: 'Bourek', image: 'bourek.jpg',id:'7'),
  Categories(category: 'tacos', image: 'takos.jpg',id:'8'),
  Categories(category: 'Hotdog', image: 'hotDog.jpg',id:'9'),
  Categories(category: 'Dessert', image: 'dessert.jpg',id:'10'),
];
// ignore: non_constant_identifier_names
List meals_list = [
  MealInfo(mealName: 'Pizza thon', price: 200 , time: 15,image: 'pizzaThon.jpg',id: '3'),
  MealInfo(mealName: 'Pizza viande', price: 200 , time: 15,image: 'pizzaViande.jpg',id: '3'),
  MealInfo(mealName: 'Pizza poulet', price: 200 , time: 15,image: 'pizzaPoulet.jpg',id: '3'),
  MealInfo(mealName: 'Sandwitch chawarma', price: 250 , time: 10,image: 'sandwitchCat.jpg',id: '1'),
  MealInfo(mealName: 'Sandwitch escalope', price: 250 , time: 10,image: 'sandEscalope.jpg',id: '1'),
  MealInfo(mealName: 'Sandwitch mariné', price: 250 , time: 10,image: 'sandMariné.jpg',id: '1'),
  MealInfo(mealName: 'Hamburger au poulet', price: 300 , time: 8,image: 'hamPoulet.jpg',id: '2'),
  MealInfo(mealName: 'Hamburger au fromage', price: 300 , time: 5,image: 'HamFrom.jpg',id: '2'),
  MealInfo(mealName: 'Salade au poulet', price: 200, time: 8,image: 'salade1.jpg',id: '5'),
  MealInfo(mealName: 'Salade au thon', price: 120 , time: 5,image: 'salade2.jpg',id: '5'),
  MealInfo(mealName: 'Plat frite', price: 100 , time: 5,image: 'platPomme.jpg',id: '4'),
  MealInfo(mealName: 'Plat frite omelette', price: 120 , time: 10,image: 'omelette.jpg',id: '4'),
  MealInfo(mealName: 'Soufflé au fromage', price: 50 , time: 5,image: 'souffletFrom.jpg',id: '6'),
  MealInfo(mealName: 'Zlabiya', price: 50, time: 0,image: 'zlabiya.jpg',id: '10'),
  MealInfo(mealName: 'Kunafa', price: 200 , time: 0,image: 'kunafa.jpg',id: '10'),
  MealInfo(mealName: 'Khobz El Bey', price: 150 , time: 0,image: 'khobzElBey.jpg',id: '10'),
];
List details=[
  MealDetails(ingredients:"-Thon\n -Farina \n zitoun", country:'Algeria', mealName: 'Pizza thon'),
  MealDetails(ingredients:"1) Pate à pizza\n2) Sauce tomate\n3) gruyere rapé\n4) Huile d'olive\n5) Poivre\n6) Sel\n7) 250g de boeuf haché", country:'Algeria',mealName: 'Pizza viande'),
  MealDetails(ingredients:'ok', country:'Algeria',mealName: 'Sandwitch chawarma'),
  MealDetails(ingredients:'ok', country:'Algeria',mealName:'Hamburger au poulet' ),
  MealDetails(ingredients:'ok', country:'Algeria',mealName: 'Bourek'),


];

class Categories {
  final String category;
  final String image;
  final String id;
  Categories({required this.category, required this.image,required this.id});
}

class MealInfo {
  final String mealName;
  final int price;
  final int time;
  final String image;
  final String id ;
 
  MealInfo({required this.mealName, required this.price, required this.time,required this.image,required this.id});
}

class MealDetails{  
  final String mealName; 
   
    final String ingredients;
    final String country ;
    MealDetails({required this.mealName, required this.ingredients,  required this.country,});
}