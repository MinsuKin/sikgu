package lab.spring.sikgu.model;

public class TagVO {

	private String TAG_ID;
	private String TAGS;
	private String TAG_SIDO;
	private String TAG_SIGUNGU;
	private String TAG_DONG;
	private String TAG_STREET;
	private String TAG_CREATED_DATE;
	private String STORE_ID;
	private String REVIEW_ID;
	
	//constructor
	public TagVO() {}
	public TagVO(String tAGS, String sTORE_ID) {
		TAGS = tAGS;
		STORE_ID = sTORE_ID;
	}
	public TagVO(String tAG_ID, String tAGS, String tAG_SIDO, String tAG_SIGUNGU, String tAG_DONG, String tAG_STREET,
			String tAG_CREATED_DATE, String sTORE_ID, String rEVIEW_ID) {
		TAG_ID = tAG_ID;
		TAGS = tAGS;
		TAG_SIDO = tAG_SIDO;
		TAG_SIGUNGU = tAG_SIGUNGU;
		TAG_DONG = tAG_DONG;
		TAG_STREET = tAG_STREET;
		TAG_CREATED_DATE = tAG_CREATED_DATE;
		STORE_ID = sTORE_ID;
		REVIEW_ID = rEVIEW_ID;
	}
	
	//getter
	public String getTAG_ID() 			{return TAG_ID;}
	public String getTAGS() 			{return TAGS;}
	public String getTAG_SIDO() 		{return TAG_SIDO;}
	public String getTAG_SIGUNGU() 		{return TAG_SIGUNGU;}
	public String getTAG_DONG() 		{return TAG_DONG;}
	public String getTAG_STREET() 		{return TAG_STREET;}
	public String getTAG_CREATED_DATE() {return TAG_CREATED_DATE;}
	public String getSTORE_ID() 		{return STORE_ID;}
	public String getREVIEW_ID() 		{return REVIEW_ID;}
	
	//setter
	public void setTAG_ID(String tAG_ID) 					{TAG_ID = tAG_ID;}
	public void setTAGS(String tAGS) 						{TAGS = tAGS;}
	public void setTAG_SIDO(String tAG_SIDO) 				{TAG_SIDO = tAG_SIDO;}
	public void setTAG_SIGUNGU(String tAG_SIGUNGU) 			{TAG_SIGUNGU = tAG_SIGUNGU;}
	public void setTAG_DONG(String tAG_DONG) 				{TAG_DONG = tAG_DONG;}
	public void setTAG_STREET(String tAG_STREET)			{TAG_STREET = tAG_STREET;}
	public void setTAG_CREATED_DATE(String tAG_CREATED_DATE){TAG_CREATED_DATE = tAG_CREATED_DATE;}
	public void setSTORE_ID(String sTORE_ID) 				{STORE_ID = sTORE_ID;}
	public void setREVIEW_ID(String rEVIEW_ID) 				{REVIEW_ID = rEVIEW_ID;}
}