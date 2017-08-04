import java.util.ArrayList;
import java.util.Iterator;

interface Subject {

    public void registerObserver(Observer o);

    public void removeObserver(Observer o);

    public void notifyObservers();
}

interface Observer {

    public void update(float temperature, float humidity, float pressure);
}

interface DisplayElement {

    public void display();
}

class WeatherData implements Subject {
    private ArrayList observers;
    private float temperature;
    private float humidity;
    private float pressure;

    public WeatherData() {
        this.observers = new ArrayList<>();
    }

    public void registerObserver(Observer o) {
        this.observers.add(o);
    }

    public void removeObserver(Observer o) {
        int index = this.observers.indexOf(o);
        if (index >= 0) {
            this.observers.remove(index);
        }
    }

    public void notifyObservers() {
        for (Iterator<Observer> iter = this.observers.iterator(); iter.hasNext();) {
            Observer observer =  iter.next();
            observer.update(this.temperature, this.humidity, this.pressure);
        }
    }

    public void measurementsChanged() {
        this.notifyObservers();
    }

    public void setMeasurements(float temperature, float humidity, float pressure) {
        this.temperature = temperature;
        this.humidity = humidity;
        this.pressure = pressure;

        this.measurementsChanged();
    }
}

class OrdinaryBoard implements Observer, DisplayElement {
    private float temperature;
    private float humidity;
    private float pressure;
    private Subject weatherData;

    public OrdinaryBoard(Subject weatherData) {
        this.weatherData = weatherData;
        weatherData.registerObserver(this);
    }

    public void update(float temperature, float humidity, float pressure) {
        this.temperature = temperature;
        this.humidity = humidity;
        this.pressure = pressure;

        this.display();
    }

    public void display() {
        System.out.println("current weather is: temperature" + this.temperature);
    }
}

class WeatherStation {
    public static void main(String[] args) {
        WeatherData weatherData = new WeatherData();

        OrdinaryBoard board = new OrdinaryBoard(weatherData);

        weatherData.setMeasurements(80, 22, 23);
        weatherData.setMeasurements(22, 35, 34);

        weatherData.removeObserver(board);
        weatherData.setMeasurements(22, 35, 34);
    }
}
