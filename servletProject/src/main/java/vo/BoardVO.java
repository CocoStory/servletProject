package vo;

public class BoardVO {
	private String subject;
	private String writer;
	private String content;
	private String writeday;
	private int hit;
	private int bidx;
	


	//생성자 
	public BoardVO(String subject, String writer, String content, String writeday, int hit, int bidx) {
		super();
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.writeday = writeday;
		this.hit = hit;
		this.bidx = bidx;
	}
	
	public BoardVO() {
		
	}

	//게터세터
	public int getBidx() {
		return bidx; 
	}

	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
}