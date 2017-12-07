package koreatech.cse.domain.rest;

public class Education {
    // mysql 설정
    // NOT NULL, AUTO INCREMENT(자동증가) 설정에 따라 mysql에 데이터를 삽입

    private String name;
    private String begindate;
    private String enddate;
    private String library;
    private String target;
    private String place;
    private String phone;

    public String getName() {return name;}

    public void setName(String name) { this.name = name;}

    public String getLibrary() {return library;}

    public void setLibrary(String library) {this.library = library;}

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getPlace() {return place;}

    public void setPlace(String place) {
        this.place = place;
    }

    public String getPhone() {return phone;}

    public void setPhone(String phone) {this.phone = phone;}
}
