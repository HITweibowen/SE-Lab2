package webtest;

import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class BookAction {
	private String Isbn;
	private String Title;
	private String AuthorID;
	private String Name;
	private String Age;
	private String Country;
	private String Publisher;
	private String PublishDate;
	private String Price;
	private List<String> meg1;
	private List<String> meg2;
	ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();

	public String getIsbn(){
		return Isbn;
	}
	public String getTitle(){
		return Title;
	}
	public String getAuthorID(){
		return AuthorID;
	}
	public String getName(){
		return Name;
	}
	public String getAge(){
		return Age;
	}
	public String getCountry(){
		return Country;
	}
	public String getPublisher(){
		return Publisher;
	}
	public String getPublishDate(){
		return PublishDate;
	}
	public String getPrice(){
		return Price;
	}
	public void setIsbn(String isbn){
		this.Isbn=isbn;
	}
	public void setTitle(String title){
		this.Title=title;
	}
	public void setAuthorID(String authorid){
		this.AuthorID=authorid;
	}
	public void setName(String name){
		this.Name=name;
	}
	public void setAge(String age){
		this.Age=age;
	}
	public void setCountry(String country){
		this.Country=country;
	}
	public void setPublisher(String publisher){
		this.Publisher=publisher;
	}
	public void setPublishDate(String publishdate){
		this.PublishDate=publishdate;
	}
	public void setPrice(String price){
		this.Price=price;
	}

	/*查询
	 * Input Name
	 */
	public String search(){
		DBConnection conn=new DBConnection();

		if(Name.equals(""))
			return "Null";
		String sql1="select AuthorID from author where Name="+"'"+Name+"'";
		meg1=conn.select(sql1);
		if(meg1.size()==0)
			return "authorInexistence";

		String sql2="select Title,Isbn from book where AuthorID="+meg1.get(0);
		meg2=conn.select(sql2);
		if(meg2.size()==0)
			return "NoBook";
		session.setAttribute("meg2", meg2);
		session.setAttribute("Name", Name);
		return "Right";
	}

	/*详情
	 * Input Title
	 */
	public String detail(){
		DBConnection conn=new DBConnection();

		String sql1="select AuthorID from book where Isbn="+"'"+Isbn+"'";
		meg1=conn.select(sql1);
		if(meg1.size()==0)
			return "Error";

		String sql2="select * from author where AuthorID="+meg1.get(0);
		meg2=conn.select(sql2);
		if(meg2.size()==0)
			return "Error";

		String sql3="select * from book where Isbn="+"'"+Isbn+"'";
		meg1=conn.select(sql3);
		if(meg1.size()==0)
			return "Error";

		session.setAttribute("meg1", meg1);
		session.setAttribute("meg2", meg2);
		return "Right";
	}

	/*删除
	 *
	 */
	public String delete(){
		DBConnection conn=new DBConnection();

		String sql0="delete from book where Isbn="+"'"+Isbn+"'";
		boolean flag=conn.delete(sql0);
		if(!flag){
			return "Error";
		}
		return "Right";
	}

	/*添加书
	 * Input Name Title Isbn Publisher PublishDate Price
	 */
	public String addBook(){
		DBConnection conn=new DBConnection();

		if(Isbn.equals("") || Title.equals("") || Name.equals("") || Publisher.equals("") || PublishDate.equals("") || Price.equals(""))
			return "Null";
		String sql0="select AuthorID from author where Name="+"'"+Name+"'";
		meg1=conn.select(sql0);
		if(meg1.size()==0){  //添加作者
			String sql2="select AuthorID from author";
			meg2=conn.select(sql2);
			if(meg2.size()==0){
				AuthorID="0";
			}
			else{
				int max=Integer.valueOf(meg2.get(0));
				for(int i=1; i<meg2.size(); i++){
					if(max < Integer.valueOf(meg2.get(i))){
						max=Integer.valueOf(meg2.get(i));
					}
				}
			AuthorID=String.valueOf(max+1);
			}
		}
		else{
			AuthorID=meg1.get(0);
		}
		String sql1="insert into book(Isbn, Title, AuthorID, Publisher, PublishDate, Price) values ("+"'"+Isbn+"'"+","+"'"+Title+"'"+","+AuthorID+","+"'"+Publisher+"'"+","+"'"+PublishDate+"'"+","+Price+")";
		boolean flag=conn.insert(sql1);
		if(!flag)
			return "Error";
		if(meg1.size()==0)
			return "addAuthor";
		return "Right";
	}

	/*添加作者
	 * Input Name AuthorID Age Country
	 */
	public String addAuthor(){
		DBConnection conn=new DBConnection();

		if(Name.equals("") || Age.equals("") || Country.equals(""))
			return "Rewrite";
		String sql2="select AuthorID from author";
		meg2=conn.select(sql2);
		if(meg2.size()==0){
			AuthorID="0";
		}
		else{
			int max=Integer.valueOf(meg2.get(0));
			for(int i=1; i<meg2.size(); i++){
				if(max < Integer.valueOf(meg2.get(i))){
					max=Integer.valueOf(meg2.get(i));
				}
			}
		AuthorID=String.valueOf(max+1);
		}
		String sql0="insert into author(AuthorID, Name, Age, Country) values ("+AuthorID+","+"'"+Name+"'"+","+Age+","+"'"+Country+"'"+")";
		boolean flag=conn.insert(sql0);
		if(!flag)
			return "Error";
		return "Right";
	}

	/*更新
	 * Input Book Name Publisher PublishDate Price
	 */
	public String upDate(){
		DBConnection conn=new DBConnection();

		if(Title.equals("") || Name.equals("") || Publisher.equals("") || PublishDate.equals("") || Price.equals(""))
			return "Null";
		String sql0="select Isbn from book where Title="+"'"+Title+"'";
		meg1=conn.select(sql0);
		if(meg1.size()==0) //数据库中没有这本书
			return "bookInexistence";

		String isbn=meg1.get(0);
		String sql3="select Name from author";
		meg2=conn.select(sql3);
		if(meg2.indexOf(Name)==-1){//添加作者
			String sql4="select AuthorID from author";
			meg2=conn.select(sql4);
			if(meg2.size()==0){
				AuthorID="0";
			}
			else{
				int max=Integer.valueOf(meg2.get(0));
				for(int i=1; i<meg2.size(); i++){
					if(max < Integer.valueOf(meg2.get(i))){
						max=Integer.valueOf(meg2.get(i));
					}
				}
			AuthorID=String.valueOf(max+1);
			}
			/*System.out.println("请完善作者信息");
			addAuthor();*/
		}
		else{
			String sql5="select AuthorID from author where Name="+"'"+Name+"'";
			meg1=conn.select(sql5);
			AuthorID=meg1.get(0);
		}

		String sql5="update book set AuthorID="+AuthorID+","+"Publisher="+"'"+Publisher+"'"+","+"PublishDate="+"'"+PublishDate+"'"+","+"Price="+Price+" where Isbn="+"'"+isbn+"'";
		boolean flag=conn.update(sql5);
		if(!flag)
			return "Error";
		if(meg2.indexOf(Name)==-1)
			return "addAuthor";
		return "Right";
	}

	/*显示所有图书
	 */
	public String allBook(){
		DBConnection conn=new DBConnection();

		String sql0="select * from book";
		meg1=conn.select(sql0);
		if(meg1.size()==0)
			return "Error";

		session.setAttribute("meg1", meg1);
		return "Right";
	}

	/*显示所有作者
	 */
	public String allAuthor(){
		DBConnection conn=new DBConnection();

		String sql0="select * from author";
		meg1=conn.select(sql0);
		if(meg1.size()==0)
			return "Error";

		session.setAttribute("meg1", meg1);
		return "Right";
	}

	/*判断一个字符串是否为数字
	 */
	public static boolean isNumeric(String str)
	{
		for(int i=0; i<str.length(); i++){
			if(!Character.isDigit(str.charAt(i)))
				return false;
		}
		return true;
	}

}


/*BUG日志
 * 1.SQL语句中，String类型的数据没有使用’‘，导致数据库无法识别英文和中文
 * 2.....<a href=Detail?Isbn="+meg.get(i)+.....连接中使用中文(Title)，无法识别，改用Isbn进行索引
 */

