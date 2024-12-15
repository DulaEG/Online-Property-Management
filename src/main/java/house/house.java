package house;

public class house {

	    private int idhouseproperty;
	    private String image;
	    private String housesize;
	    private String landsize;
	    private String bedrooms;
	    private String bathrooms;
	    private String location;
	    private String address;
	    private String description;
	    private String price;
	    
	    public house(int idhouseproperty, String image, String housesize, String landsize, String bedrooms, String bathrooms,
				String location, String address, String description, String price) {
			super();
			this.idhouseproperty = idhouseproperty;
			this.image = image;
			this.housesize = housesize;
			this.landsize = landsize;
			this.bedrooms = bedrooms;
			this.bathrooms = bathrooms;
			this.location = location;
			this.address = address;
			this.description = description;
			this.price =  price;
			
	    }
		public int getId() {
			return idhouseproperty;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image= image;
		}
		public String getHousesize() {
			return housesize;
		}
		public void setHousesize(String housesize) {
			this.housesize = housesize;
		}
		public void setId(int idhouseproperty) {
			this.idhouseproperty = idhouseproperty;
		}
		public String getLandsize() {
			return landsize;
		}
		public void setLandsize(String landsize) {
			this.landsize = landsize;
		}
		public String getBedrooms() {
			return bedrooms;
		}
		public void setBedrooms(String bedrooms) {
			this.bedrooms = bedrooms;
		}
		public String getBathrooms() {
			return bathrooms;
		}
		public void setBathrooms(String bathrooms) {
			this.bathrooms = bathrooms;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public String Adsress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
	    
}


