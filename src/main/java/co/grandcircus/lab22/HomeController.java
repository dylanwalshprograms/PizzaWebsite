package co.grandcircus.lab22;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@RequestMapping("")
	public String home(Model model) {
		List<SpecialtyPizza> pizzas = new ArrayList<>();
		pizzas.add(new SpecialtyPizza("Anchovy Lover's", "$15.00"));
		pizzas.add(new SpecialtyPizza("Plankton's Revenge", "$18.00"));
		pizzas.add(new SpecialtyPizza("No, this is Patrick", "$20.00"));
		
		model.addAttribute("pizzas", pizzas);
		
		return "index";
		
	}


}
