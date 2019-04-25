package macuahuitl;

public class Spider {
	private int id;
	private String article_id;
	private String subject;
	private String subid;
	private String title;
	
	public Spider(String article_id, String subject, String subid, String title) {
		super();
		this.article_id = article_id;
		this.subject = subject;
		this.subid = subid;
		this.title = title;
	}

	public Spider(int id, String article_id, String subject, String subid, String title) {
		super();
		this.id = id;
		this.article_id = article_id;
		this.subject = subject;
		this.subid = subid;
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArticle_id() {
		return article_id;
	}

	public void setArticle_id(String article_id) {
		this.article_id = article_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubid() {
		return subid;
	}

	public void setSubid(String subid) {
		this.subid = subid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Spider [id=" + id + ", article_id=" + article_id + ", subject=" + subject + ", subid=" + subid
				+ ", title=" + title + "]";
	}
	
	
}

