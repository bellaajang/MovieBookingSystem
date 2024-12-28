package ENSF480TermProject.backend.dtos.transaction;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import ENSF480TermProject.backend.utils.SeatPosition;

public class TicketPurchaseRequestDTO {
    private String address, email, movie, theatre;
    private BigDecimal discount, gst, ticketPrice, totalPrice;
    private ShowtimeDTO showtime;
    private SeatPosition seatPosition;
    
    @Override
    public String toString() {
        return "Total ticket price: " + ticketPrice +
                " For movie: " + movie + " at theatre: " + theatre + " at Time: " + showtime.getTime();
    }

    public TicketPurchaseRequestDTO() {}

    //Get
    public String getAddress() {
        return address;
    }

    public BigDecimal getDiscount() {
        return discount;
    }

    public String getEmail() {
        return email;
    }

    public BigDecimal getGst() {
        return gst;
    }

    public String getMovie() {
        return movie;
    }

    public ShowtimeDTO getShowtime() {
        return showtime;
    }

    public String getTheatre() {
        return theatre;
    }

    public BigDecimal getTicketPrice() {
        return ticketPrice;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public SeatPosition getSeatPosition() {
        return seatPosition;
    }

    //Set
    public void setAddress(String address) {
        this.address = address;
    }

    public void setDiscount(BigDecimal discount) {
        this.discount = discount;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setGst(BigDecimal gst) {
        this.gst = gst;
    }

    public void setMovie(String movie) {
        this.movie = movie;
    }

    public void setShowtime(ShowtimeDTO showtime) {
        this.showtime = showtime;
    }

    public void setTheatre(String theatre) {
        this.theatre = theatre;
    }
    public void setTicketPrice(BigDecimal ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void setSeatPosition(SeatPosition seatPosition) {
        this.seatPosition = seatPosition;
    }

    public static class ShowtimeDTO {
        private Long id, movie_id, theatre_id;
        private LocalDateTime time;

        public ShowtimeDTO() {}

        //Get
        public Long getId() {
            return id;
        }

        public Long getMovie_id() {
            return movie_id;
        }

        public Long getTheatre_id() {
            return this.theatre_id;
        }

        public LocalDateTime getTime() {
            return time;
        }

        //Set
        public void setId(Long id) {
            this.id = id;
        }

        public void setMovie_id(Long movie_id) {
            this.movie_id = movie_id;
        }

        public void setTheatre_id(Long theatre_id) {
            this.theatre_id = theatre_id;
        }

        public void setTime(LocalDateTime time) {
            this.time = time;
        }

    } 
}
