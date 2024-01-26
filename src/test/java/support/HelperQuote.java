package support;

public class HelperQuote {
    public static String myVal = "My static constant";

    public static String getUrlFor(String name) {
        switch (name) {
            case "QA":
                return "https://quote-stage.portnov.com/";
            default:
                return "";

        }
    }

    public static String getxpathFor(String name) {
        switch (name) {
            case "username":
                return "//input[@name='username']";
            case "name":
                return "//input[@id='name']";
            case "email":
                return "";
            case "password":
                return "//input[@id='password']";
            default:
                return "";
        }
    }
}

