package data;

import javax.servlet.http.*;

public class CookieUtil {

  public static String getCookieValue(Cookie[] cookies, String cookieName) {
    String cookieValue = "";

    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (cookieName.equals(cookie.getName())) {
          cookieValue = cookie.getValue();
        }
      }
    }
    return cookieValue;
  }

  public static Cookie getCookieByName(Cookie[] cookies, String cookieName) {
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (cookieName.equals(cookie.getName())) {
          return cookie;
        }
      }
    }   
    return null;
  }
}
