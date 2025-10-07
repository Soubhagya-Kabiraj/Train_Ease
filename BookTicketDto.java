package master.dto;

public class BookTicketDto {
    private int ticketId;
    private String trainNo;
    private String trainName;
    private String fromStation;
    private String toStation;
    private String passengerName;
    private int age;
    private String gender;
    private double fare;   // ✅ Added fare field

    // getters and setters
    public int getTicketId() { return ticketId; }
    public void setTicketId(int ticketId) { this.ticketId = ticketId; }

    public String getTrainNo() { return trainNo; }
    public void setTrainNo(String trainNo) { this.trainNo = trainNo; }

    public String getTrainName() { return trainName; }
    public void setTrainName(String trainName) { this.trainName = trainName; }

    public String getFromStation() { return fromStation; }
    public void setFromStation(String fromStation) { this.fromStation = fromStation; }

    public String getToStation() { return toStation; }
    public void setToStation(String toStation) { this.toStation = toStation; }

    public String getPassengerName() { return passengerName; }
    public void setPassengerName(String passengerName) { this.passengerName = passengerName; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public double getFare() { return fare; }
    public void setFare(double fare) { this.fare = fare; }
    
}
