package vehicle;

public class vehicle {
	
    private int idvehicle;
    private String   regno;
    private String brand;
    private String year;
    private String mileage;
    private String  oname;
    private String price;
    
    public vehicle(int idvehicle,String regno, String brand, String year, String mileage, String oname, String price) {
		super();
		this.idvehicle=idvehicle;
		this.regno = regno;
		this.brand = brand;
		this.year = year;
		this.mileage = mileage;
		this.oname = oname;
		this.price = price;
	}
    
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

	public int getVid() {
		return idvehicle;
	}

	public void setVid(int idvehicle) {
		this.idvehicle = idvehicle;
	}
	
    
    
    

}
