package koreatech.cse.service;

import koreatech.cse.domain.Library;
import org.springframework.stereotype.Service;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedInputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by Kim Min Young on 2017-12-03.
 */

@Service
public class LibraryService {

    public ArrayList<Library> apiParserSearch() throws Exception {

        URL url = new URL(getURLParam("도봉구"));

        XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
        factory.setNamespaceAware(true);
        XmlPullParser xpp = factory.newPullParser();
        BufferedInputStream bis = new BufferedInputStream(url.openStream());
        xpp.setInput(bis, "utf-8");

        //String tag = null;
        int event_type = xpp.getEventType();
        int tagIdentifier = 0;

        //ArrayList<String> list = new ArrayList<String>();
        ArrayList<Library> list = null;


        String addr = null;
        Library library = null;

        while (event_type != XmlPullParser.END_DOCUMENT) {
            switch (event_type) {
                case XmlPullParser.END_DOCUMENT:
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<Library>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = xpp.getName();
                    if (tag.equals("row")) {
                        list.add(library);
                        library = null;
                    }
                }

                case XmlPullParser.START_TAG: {
                    String tag = xpp.getName();
                    if (tag.equals("row")) {
                        library = new Library();

                    } else if (tag.equals("LBRRY_NAME")) {
                        if (library != null)
                            library.setName(xpp.nextText());

                    } else if (tag.equals("ADRES")) {
                        if (library != null)
                            library.setAddress(xpp.nextText());
                    }
                    break;
                }
            }
            event_type = xpp.next();
            //printList(list);
        }
        return list;
    }


    private String getURLParam(String search){
        String url = "";
        System.out.println(search);
        try{
            String district = URLEncoder.encode(search, "UTF-8");
            System.out.println(district);
            url = "http://openapi.seoul.go.kr:8088/7367785455676f6c3535724f7a5a4c/xml/SeoulPublicLibrary/1/10/" + district;
        } catch(Exception e) {
            e.printStackTrace();
        }

        return url;
    }

    private void printList(ArrayList<Library> list){
        for(Library entity : list){
            System.out.println(entity);
        }
    }

    public ArrayList<Library> parseTest() {
        ArrayList<Library> lList = null;
        try {
            lList = apiParserSearch();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return lList;
    }
}
