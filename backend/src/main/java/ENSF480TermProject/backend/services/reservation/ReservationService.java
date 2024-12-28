package ENSF480TermProject.backend.services.reservation;

import java.util.Optional;

import org.springframework.stereotype.Service;

import ENSF480TermProject.backend.dtos.transaction.PaymentResponseDTO;
import ENSF480TermProject.backend.dtos.transaction.TicketPurchaseRequestDTO;
import ENSF480TermProject.backend.services.payment.TransactionService;

@Service
public class ReservationService {
    private final TransactionService transactionService;
    private final SeatService seatService;

    public ReservationService(TransactionService transactionService, SeatService seatService) {
        this.transactionService = transactionService;
        this.seatService = seatService;
    }

    public Optional<PaymentResponseDTO> processReservation(TicketPurchaseRequestDTO ticketPurchaseRequestDTO){
        seatService.reserveSeat(ticketPurchaseRequestDTO.getShowtime().getId(), ticketPurchaseRequestDTO.getSeatPosition());
        PaymentResponseDTO paymentResponseDTO = transactionService.makePurchase(ticketPurchaseRequestDTO).get();

        return Optional.of(paymentResponseDTO);
    }

    // public Optional<RefundResponseDTO> processCancellation(TicketRefundRequestDTO ticketRefundRequestDTO){

    // }
}
