interface FlyBehavior {
    public void fly();
}
interface QuackBehavior {
    public void quack();
}

class FlyWithWings implements FlyBehavior {
    public void fly() {
        System.out.println("Fly with wings");
    }
}

class Quack implements QuackBehavior {
    public void quack() {
        System.out.println("Quack");   
    }
}

abstract class Duck {
    FlyBehavior fly;
    QuackBehavior quack;

    public Duck() {}

    public abstract void display();

    public void performFly() {
        fly.fly();
    }

    public void performQuack() {
        quack.quack();
    }
}

class Mallard extends Duck {
    public Mallard() {
        fly = new FlyWithWings();
        quack = new Quack();
    }

    public void display() {
        System.out.println("mallard duck");   
    }
}

/**
 * duckgame
 */
public class duckgame {
    public static void main(String[] args) {
        Duck mallard = new Mallard();
        mallard.display();
        mallard.performFly();
        mallard.performQuack();
    }
}