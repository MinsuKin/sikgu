package lab.spring.sikgu.model;

public class MenuVO {

		private String sikgu_id;
		private int category_id;
		private String menus;
		
		//constructor
		public MenuVO() {}
		public MenuVO(String sikgu_id, int category_id, String menus) {
			this.sikgu_id = sikgu_id;
			this.category_id = category_id;
			this.menus = menus;
		}
		// getter
		public String getSikgu_id() {return sikgu_id;}
		public int getCategory_id() {return category_id;}
		public String getMenus() 	{return menus;}
		// setter
		public void setSikgu_id(String sikgu_id) 	{this.sikgu_id = sikgu_id;}
		public void setCategory_id(int category_id) {this.category_id = category_id;}
		public void setMenus(String menus) 			{this.menus = menus;}
}
