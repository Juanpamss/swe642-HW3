package beans;

public class StudentBean {
	
	private String studentId;
	private String name;
	private String address;
	private String city;
	private String state;
	private int zip;
	private String telephone;
	private String email;
	private String date;
	private String url;
	private String data;
	private String gradMonth;
	private String gradYear;
	private String preferences;
	private String interested;
	private String recommend;
	private String comments;
	
	public StudentBean(){}
	
	public StudentBean(String studentId, String name, String address, String city, String state, int zip, String telephone, String email, String date, String url, String data, String gradMonth, String gradYear, String preferences, String interested, String recommend, String comments){
		this.studentId = studentId;
		this.name = name;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.telephone = telephone;
		this.email = email;
		this.date = date;
		this.url = url;
		this.data = data;
		this.gradMonth = gradMonth;
		this.gradYear = gradYear;
		this.preferences = preferences;
		this.interested = interested;
		this.recommend = recommend;
		this.comments = comments;
	}
	

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getGradMonth() {
		return gradMonth;
	}

	public void setGradMonth(String gradMonth) {
		this.gradMonth = gradMonth;
	}

	public String getGradYear() {
		return gradYear;
	}

	public void setGradYear(String gradYear) {
		this.gradYear = gradYear;
	}

	public String getPreferences() {
		return preferences;
	}

	public void setPreferences(String preferences) {
		this.preferences = preferences;
	}

	public String getInterested() {
		return interested;
	}

	public void setInterested(String interested) {
		this.interested = interested;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}	

}
