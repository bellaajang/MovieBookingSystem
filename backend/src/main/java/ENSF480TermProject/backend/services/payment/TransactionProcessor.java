package ENSF480TermProject.backend.services.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ENSF480TermProject.backend.dtos.transaction.TransactionResponseDTO;
import ENSF480TermProject.backend.enums.TransactionType;
import ENSF480TermProject.backend.interfaces.TransactionStrategy;
import ENSF480TermProject.backend.models.Transaction;
import ENSF480TermProject.backend.strategies.TransactionStrategyRegistry;

@Component
public class TransactionProcessor {

    private final TransactionStrategyRegistry strategyRegistry;

    @Autowired
    public TransactionProcessor(TransactionStrategyRegistry strategyRegistry) {
        this.strategyRegistry = strategyRegistry;
    }

    public TransactionResponseDTO processTransaction(Transaction transaction, TransactionType transactionType) {
        TransactionStrategy strategy = strategyRegistry.getStrategy(transactionType);
        return strategy.processTransaction(transaction);
    }
}



