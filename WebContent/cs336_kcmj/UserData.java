package cs336_kcmj;
public class UserData {
String netID;
String password;
String isStudent;
String password2;
String RUID;
String gpa;
String major;
String credits;
String cid;
String section;
String roomsize; 
String prereq;
String meetingtime;
String room;
String seatlimit;
String numstudents; 
String numgiven;
String rid;

public void setrid(String value)
{
	rid=value;
}

public void setmeetingtime(String value){
	meetingtime = value;
}
public void setroom(String value){
	room = value;
}
public void setnumstudents(String value){
	numstudents = value;
}
public void setnumgiven(String value){
	numgiven = value;
}
public void setRUID(String value){
	RUID = value;
}
public void setSection(String value){
	section = value;
}
public void setcid(String value){
	cid = value;
}
public void setroomsize(String value){
	roomsize = value;
}
public void setprereq(String value){
	prereq = value;
}

public void setisStudent(String value){
	isStudent = value;
}
public void setNetID(String value){
	netID = value;
}
public void setPassword(String value){
	password = value;
}
public void setPassword2(String value){
	password2 = value;
}
public void setgpa(String value){
	gpa = value;
}
public void setmajor(String value){
	major = value;
}
public void setcredits(String value){
	credits = value;
}
public String getNetID(){
	return netID;
}
public String getPassword(){
	return password;
}
public String getPassword2(){
	return password2;
}
public String getisStudent(){
	return isStudent;
}
public String getgpa(){
	return gpa;
}
public String getmajor(){
	return major;
}
public String getcredits(){
	return credits;
}
public String getRUID(){
	return RUID;
}
public String getcid(){
	return cid;
}
public String getSection(){
	return section;
}
public String getroomsize(){
	return roomsize;
}
public String getprereq(){
	return prereq;
}
public String getmeetingtime(){
	return meetingtime;
}
public String getroom(){
	return room ;
}
public String getnumstudents(){
	return numstudents;
}
public String getnumgiven(){
	return numgiven;
}
public String getrid(){
	return rid;
}

}


