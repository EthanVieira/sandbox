import java.util.*;

public class SimpleDotComGame {

    private GameHelper helper = new GameHelper();
    private ArrayList<SimpleDotCom> dotComsList = new ArrayList<SimpleDotCom>();
    private int numOfGuesses = 0;


    private void setUpGame() {
        SimpleDotCom one = new SimpleDotCom();
        one.setName("Pets.com");
        SimpleDotCom two = new SimpleDotCom();
        two.setName("eToys.com");
        SimpleDotCom three = new SimpleDotCom();
        three.setName("Go2.com");
        dotComsList.add(one);
        dotComsList.add(two);
        dotComsList.add(three);

        System.out.println("Your goal is to sink three dot coms.");
        System.out.println("Pets.com, eToys.com, Go2.com");
        System.out.println("Try to sink them all in the fewest number of guesses.");

        for (SimpleDotCom dotComToSet : dotComsList) {
            ArrayList<String> newLocation = helper.placeDotCom(3);
            dotComToSet.setLocationCells(newLocation);
        }
    }

    private void startPlaying() {
        while (!dotComsList.isEmpty()) {
            String userGuess = helper.getUserInput("Enter a guess");
            checkUserGuess(userGuess);
        }   
        finishGame();
    }

    private void checkUserGuess(String userGuess) {
        numOfGuesses++;
        String result = "miss";

        for (SimpleDotCom dotComToTest : dotComsList) {
            result = dotComToTest.checkYourself(userGuess);
            if (result.equals("hit")) {
                break;
            }
            if (result.equals("kill")) {
                dotComsList.remove(dotComToTest);
                break;
            }
        }
        System.out.println(result);
    }

    private void finishGame() {
        System.out.println("All Dot Coms are dead! Your stock is now worthless.");
        if (numOfGuesses <= 18) {
            System.out.println("It only took you " + numOfGuesses + " guesses.");
            System.out.println("You got out before your options sank.");
        } else {
            System.out.println("Took you long enough. " + numOfGuesses + " guesses.");
            System.out.println("Fish are dancing with your options.");
        }
    }

    public static void main (String[] args) {
        SimpleDotComGame game = new SimpleDotComGame();
        game.setUpGame();
        game.startPlaying();
    }

}