package org.airlineticket;

public class FlightSearchResult {
	private String flight_id;
    private String airlines_id;
    private String from_location;
    private String to_location;
    private String departure_date;
    private String price;
    
	public FlightSearchResult(String flight_id, String airlines_id, String from_location, String to_location,
			String departure_date, String price) {
		super();
		this.flight_id = flight_id;
		this.airlines_id = airlines_id;
		this.from_location = from_location;
		this.to_location = to_location;
		this.departure_date = departure_date;
		this.price = price;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(String flight_id) {
		this.flight_id = flight_id;
	}
	public String getAirlines_id() {
		return airlines_id;
	}
	public void setAirlines_id(String airlines_id) {
		this.airlines_id = airlines_id;
	}
	public String getFrom_location() {
		return from_location;
	}
	public void setFrom_location(String from_location) {
		this.from_location = from_location;
	}
	public String getTo_location() {
		return to_location;
	}
	public void setTo_location(String to_location) {
		this.to_location = to_location;
	}
	public String getDeparture_date() {
		return departure_date;
	}
	public void setDeparture_date(String departure_date) {
		this.departure_date = departure_date;
	}
}
