/*
* 饮料抽象类；
* 书中解释了为什么不适用接口的原因。原有代码已经创建了该抽象了，进行装饰者设计时沿用了原先的实现；
*/
abstract class Beverage {
    String description = "Unknow Beverage";

    public String getDescription() {
        return this.description;
    }

    public abstract double cost();
}

/*
* 调料抽象类继承自Beverage，即装饰者；
*/
abstract class CondimentDecorator extends Beverage {

    public abstract String getDescription();
}

/*
*  实现真正的饮料：浓缩咖啡和houseblend
*/
class Espresso extends Beverage {

    public Espresso() {
        this.description = "Espresso";
    }

    public double cost() {
        return 1.99;
    }
}

class HouseBlend extends Beverage {

    public HouseBlend() {
        this.description = "HouseBlend";
    }

    public double cost() {
        return 0.89;
    }
}

class Mocha extends CondimentDecorator {
    Beverage beverage;

    public Mocha(Beverage beverage) {
        this.beverage = beverage;
    }

    public String getDescription() {
        return this.beverage.getDescription() + ", Mocha ";
    }

    public double cost() {
        return this.beverage.cost() + 0.20;
    }
}

class StarbuzzCoffe {
    public static void main(String[] args) {
        Beverage beverage = new Espresso();
        System.out.println(beverage.getDescription() + " $ " + beverage.cost());

        Beverage beverage1 = new HouseBlend();
        beverage1 = new Mocha(beverage1);
        beverage1 = new Mocha(beverage1);

        System.out.println(beverage1.getDescription() + " $ " + beverage1.cost());
    }
}