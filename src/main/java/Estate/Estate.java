package Estate;

public class Estate {
	private int estate_id;
	private String location;
	private String construction;
	private String size;
	private String area;
	private String price;
	
	public Estate(int estate_id, String location, String construction, String size, String area, String price) {
		super();
		this.estate_id = estate_id;
		this.location = location;
		this.construction = construction;
		this.size = size;
		this.area = area;
		this.price = price;
	}

	public int getEstate_id() {
		return estate_id;
	}

	

	public String getLocation() {
		return location;
	}

	

	public String getConstruction() {
		return construction;
	}

	

	public String getSize() {
		return size;
	}

	

	public String getArea() {
		return area;
	}

	

	public String getPrice() {
		return price;
	}

	
	

}
