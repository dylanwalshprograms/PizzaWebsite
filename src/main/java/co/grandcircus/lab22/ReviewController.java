package co.grandcircus.lab22;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {
	
	@RequestMapping("/leave-review")
	public String review(Model model) {
		
		return "leave-review";
		
	}
	
	@RequestMapping("/review-confirmation")
	public String reviewConfirmation(@RequestParam(required=false) String name, @RequestParam(required=false) String comment, @RequestParam(required=false) int rating, Model model) {
		
		model.addAttribute("name", "Your name: " + name);
		model.addAttribute("comment", "Your comment: " + comment);
		model.addAttribute("rating", "Your rating: " + rating);
		
		return "review-confirmation";
		
	}

}
