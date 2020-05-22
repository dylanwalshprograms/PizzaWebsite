package co.grandcircus.lab22;

public class SpecialtyPizza {
	
	private String name;
	private String price;
	
	public SpecialtyPizza() {}
	
	public SpecialtyPizza(String name, String price) {
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "SpecialtyPizza [name=" + name + ", price=" + price + "]";
	}
	
	

}
