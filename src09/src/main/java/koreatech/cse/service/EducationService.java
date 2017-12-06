package koreatech.cse.service;

import koreatech.cse.domain.Education;
import koreatech.cse.domain.Event;
import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;


@Service
public class EducationService {

    public ArrayList<Education> serachEducation(String district, String library) {
        ArrayList<Education> list = null;
        try {
            URL url = new URL(getURLParam(district, library));

            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            factory.setNamespaceAware(true);
            XmlPullParser xpp = factory.newPullParser();
            BufferedInputStream bis = new BufferedInputStream(url.openStream());
            xpp.setInput(bis, "utf-8");

            int event_type = xpp.getEventType();

            String addr = null;
            Education education = null;

            while (event_type != XmlPullParser.END_DOCUMENT) {
                switch (event_type) {
                    case XmlPullParser.END_DOCUMENT:
                        break;
                    case XmlPullParser.START_DOCUMENT:
                        list = new ArrayList<Education>();
                        break;
                    case XmlPullParser.END_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            list.add(education);
                            education = null;
                        }
                    }

                    case XmlPullParser.START_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            education = new Education();

                        } else if (tag.equals("EVENT_NM")) {
                            if (education != null)
                                education.setName(xpp.nextText());
                        } else if (tag.equals("LBRRY_NAME")) {
                            if (education != null)
                                education.setLibrary(xpp.nextText());
                        } else if (tag.equals("LBRRY_NAME")) {
                            if (education != null)
                                education.setName(xpp.nextText());
                        } else if (tag.equals("EVENT_BGNDE")) {
                            if (education != null)
                                education.setBegindate(xpp.nextText());
                        } else if (tag.equals("EVENT_ENDDE")) {
                            if (education != null)
                                education.setEnddate(xpp.nextText());
                        } else if (tag.equals("TRGET")) {
                            if (education != null)
                                education.setTarget(xpp.nextText());
                        } else if (tag.equals("PLACE")) {
                            if (education != null)
                                education.setPlace(xpp.nextText());
                        }
                        break;
                    }
                }
                event_type = xpp.next();
            }

        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    private String getURLParam(String search, String search2){
        String url = "";
        System.out.println(search);

        try{
            String district = URLEncoder.encode(search, "UTF-8");
            String library = URLEncoder.encode(search2, "UTF-8");
            System.out.println(district);
            url = "http://openapi.seoul.go.kr:8088/7367785455676f6c3535724f7a5a4c/xml/SeoulLibraryEduInfo/1/30/" + district + "/" + library;
        } catch(Exception e) {
            e.printStackTrace();
        }

        return url;
    }

}