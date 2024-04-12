package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PaymentDTO;

public interface PaymentDAO {
	int insertPayment(PaymentDTO paymentDTO);
	int deletePayment(int paymentNo);
	int updatePaymentStatus(PaymentDTO paymentDTO);
	int recoverPayment(int PaymentNo); 			
	int realDeletePayment(int PaymentNo); 		
	PaymentDTO selectPayment(int PaymentNo); 		
	int selectPaymentCount(); 						
	List<PaymentDTO> selectPaymentList(); 			
	List<PaymentDTO> selectPaymentPageList(Map<String, Object> map); 
}
