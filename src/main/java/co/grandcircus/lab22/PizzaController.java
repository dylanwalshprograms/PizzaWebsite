package co.grandcircus.lab22;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	
	@RequestMapping("/pizza1")
	public String pizza1(@RequestParam String name, @RequestParam String price, Model model) {
		
		model.addAttribute("pizza", "Specialty Pizza: " + name);
		model.addAttribute("name", "Name: " + name);
		model.addAttribute("price", "Price: " + price);
		return "pizza1";
		
	}
	
	@RequestMapping("/pizza2")
	public String pizza2(Model model) {
		
		return "pizza2";
		
	}
	
	@RequestMapping("/pizza3")
	public String pizza3(Model model) {
		
		return "pizza3";
		
	}
	@RequestMapping("/pizza-builder")
	public String pizzaBuilder(Model model) {
		
		List<String> toppings = new ArrayList<>();
		toppings.add("Pepperoni");
		toppings.add("Bacon");
		toppings.add("Green Peppers");
		toppings.add("Mushrooms");
		toppings.add("Sausage");
		toppings.add("Ham");
		toppings.add("Pineapple");
		toppings.add("Feta Cheese");
		
		model.addAttribute("toppings", toppings);		
		
		return "pizza-builder";
		
	}
	@RequestMapping("/order-confirmation")
	public String buildPizza(@RequestParam(required=false) String size, @RequestParam(required=false) int toppings, @RequestParam(required=false) boolean glutenfree, @RequestParam(required=false) String specialinstructions, Model model) {
		double price = 0;
		String noGluten = "No";
		if(size.equals("Small")) {
			price += 7;
			price += toppings * .50;
		}
		if(size.equals("Medium")) {
			price += 10;
			price += toppings * 1;
		}
		if(size.equals("Large")) {
			price += 12;
			price += toppings * 1.25;
		}
		if(glutenfree == true) {
			price += 2;
			noGluten = "Yes";
			
		}
		model.addAttribute("size", "Size: " + size);
		model.addAttribute("toppings", "Toppings: " + toppings);
		model.addAttribute("glutenfree", "Gluten-Free Crust: " + noGluten);
		model.addAttribute("specialinstructions", "Special Instructions: " + specialinstructions);
		model.addAttribute("price", String.format("Price: $%.2f" , price));
		model.addAttribute("freeDelivery", price);
		
		return "order-confirmation";
		
	}


}
