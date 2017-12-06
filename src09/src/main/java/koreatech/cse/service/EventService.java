package koreatech.cse.service;

import koreatech.cse.domain.Event;
import koreatech.cse.domain.Library;
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
public class EventService {

    public ArrayList<Event> serachEvent(String district, String library) {
        ArrayList<Event> list = null;
        try {
            URL url = new URL(getURLParam(district, library));

            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            factory.setNamespaceAware(true);
            XmlPullParser xpp = factory.newPullParser();
            BufferedInputStream bis = new BufferedInputStream(url.openStream());
            xpp.setInput(bis, "utf-8");

            int event_type = xpp.getEventType();

            String addr = null;
            Event event = null;

            while (event_type != XmlPullParser.END_DOCUMENT) {
                switch (event_type) {
                    case XmlPullParser.END_DOCUMENT:
                        break;
                    case XmlPullParser.START_DOCUMENT:
                        list = new ArrayList<Event>();
                        break;
                    case XmlPullParser.END_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            list.add(event);
                            event = null;
                        }
                    }

                    case XmlPullParser.START_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            event = new Event();

                        } else if (tag.equals("EVENT_NM")) {
                            if (event != null)
                                event.setName(xpp.nextText());
                        } else if (tag.equals("LBRRY_NAME")) {
                            if (event != null)
                                event.setLibraryname(xpp.nextText());
                        } else if (tag.equals("EVENT_BGNDE")) {
                            if (event != null)
                                event.setBegindate(xpp.nextText());
                        } else if (tag.equals("EVENT_ENDDE")) {
                            if (event != null)
                                event.setEnddate(xpp.nextText());
                        } else if (tag.equals("TRGET")) {
                            if (event != null)
                                event.setTarget(xpp.nextText());
                        } else if (tag.equals("PLACE")) {
                            if (event != null)
                                event.setPlace(xpp.nextText());
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
            url = "http://openapi.seoul.go.kr:8088/7367785455676f6c3535724f7a5a4c/xml/SeoulLibraryEvent/1/30/" + district + "/" + library;
        } catch(Exception e) {
            e.printStackTrace();
        }

        return url;
    }

}