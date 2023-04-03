package demo;

public class Items {
	protected int id;
	protected String name;
	protected int price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Items() {
		super();
	}
	public Items(int id, String name, int price) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
	}
}
