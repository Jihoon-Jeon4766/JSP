package el;

import java.util.ArrayList;
import java.util.List;

public class Movie {

    public static List<String> getmovies(String genre) {
    	
        List<String> movies = new ArrayList<>();

        switch (genre) {
            case "국내":
                movies.add("기생충");
                movies.add("범죄도시");
                movies.add("베테랑");
                break;
                
            case "판타지":
                movies.add("반지의제왕");
                movies.add("해리포터");
                movies.add("호빗");
                break;
                
            case "SF":
                movies.add("트랜스포머");
                movies.add("리얼스틸");
                movies.add("미션임파서블");
                break;
                
            case "픽사":
                movies.add("토이스토리");
                movies.add("코코");
                movies.add("인크레더블");
                break;
                
            case "마블":
                movies.add("어벤져스");
                movies.add("어벤져스2");
                movies.add("어벤져스3");
                break;
            default:
                movies.add("");
        }

        return movies;
    }
}
