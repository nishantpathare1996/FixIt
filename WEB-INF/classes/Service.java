package pojo;

public class Service{
	private String serviceId;
	private String serviceName;
    private String category;
	
	public Service(String serviceId,String serviceName,String category) {
        this.serviceId = serviceId;
		this.serviceName = serviceName;
        this.category = category;
	}

	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}


	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}


    public String getCategory() {
		return category;
	}
    public void setCategory(String category) {
		this.category = category;
	}
}
