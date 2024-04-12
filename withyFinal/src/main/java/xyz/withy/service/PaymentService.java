package xyz.withy.service;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PaymentDTO;

public interface PaymentService {
	void addPayment(PaymentDTO paymentDTO);
	void modifyPaymentStatus(PaymentDTO paymentDTO);
	void removePayment(int paymentNo);
	void revivalPayment(int PaymentNo); 			
	void realRemovePayment(int PaymentNo); 		
	PaymentDTO getPayment(int PaymentNo); 		
	int getPaymentCount(); 						
	List<PaymentDTO> getPaymentList(); 			
	List<PaymentDTO> getPaymentPageList(Map<String, Object> map); 
}
