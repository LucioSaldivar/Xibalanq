package macuahuitl;

public class SubReddit {
	private int id;
	private String name;
	
	public SubReddit(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public SubReddit(String name) {
		super();
		this.name = name;
	}

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

	@Override
	public String toString() {
		return "SubReddit [id=" + id + ", name=" + name + "]";
	}
	
	
	
}

