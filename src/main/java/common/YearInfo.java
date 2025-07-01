package common;

public class YearInfo {
    private String year;
    private String event;

    public String getYear() {
        return year;
    }
    
    public String getEvent() {
        return event;
    }

    public void setYear(String year) {
    	
        this.year = year;

        // 연도에 따라 자동으로 event 값 설정
        switch (year) {
            case "2020":
                this.event = "전지훈 성인";
                break;
            case "2021":
                this.event = "코로나";
                break;
            case "2022":
                this.event = "카타르 월드컵";
                break;
            case "2023":
                this.event = "몰라";
                break;
            case "2024":
                this.event = "2024년 파리 올림픽 준비";
                break;
                
        }
    }

 }
