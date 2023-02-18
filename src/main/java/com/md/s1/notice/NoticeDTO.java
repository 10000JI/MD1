package com.md.s1.notice;

import java.sql.Date;

public class NoticeDTO {
	private Long NOTICENUM;
	private String NOTICETITLE;
	private String NOTICECONTENTS;
	private String NOTICEWRITER;
	private Date NOTICEREGDATE;
	private Long NOTICEHIT;
	public Long getNOTICENUM() {
		return NOTICENUM;
	}
	public void setNOTICENUM(Long nOTICENUM) {
		NOTICENUM = nOTICENUM;
	}
	public String getNOTICETITLE() {
		return NOTICETITLE;
	}
	public void setNOTICETITLE(String nOTICETITLE) {
		NOTICETITLE = nOTICETITLE;
	}
	public String getNOTICECONTENTS() {
		return NOTICECONTENTS;
	}
	public void setNOTICECONTENTS(String nOTICECONTENTS) {
		NOTICECONTENTS = nOTICECONTENTS;
	}
	
	public String getNOTICEWRITER() {
		return NOTICEWRITER;
	}
	public void setNOTICEWRITER(String nOTICEWRITER) {
		NOTICEWRITER = nOTICEWRITER;
	}
	public Date getNOTICEREGDATE() {
		return NOTICEREGDATE;
	}
	public void setNOTICEREGDATE(Date nOTICEREGDATE) {
		NOTICEREGDATE = nOTICEREGDATE;
	}
	public Long getNOTICEHIT() {
		return NOTICEHIT;
	}
	public void setNOTICEHIT(Long nOTICEHIT) {
		NOTICEHIT = nOTICEHIT;
	}
	
	
}
