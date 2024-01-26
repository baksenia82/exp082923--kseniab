package support;

public class House {
    public int numberOfWindows;
    public int getNumberOfStories;
    public String color;

    public static  String basement = "We do have basement";

    public House(){


    }

    public House (String color, int numberOfWindows, int getNumberOfStories){
        this.color = color;
        this.numberOfWindows = numberOfWindows;
        this.getNumberOfStories =getNumberOfStories;

    }
 public static void openTheDoor(){
     System.out.println("The front door opens..");
 }
}
