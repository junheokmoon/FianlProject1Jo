package xyz.withy.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.withy.dao.PaymentDAO;
import xyz.withy.dto.PaymentDTO;

@Service
@RequiredArgsConstructor

public class PaymentServiceImpl implements PaymentService {

	private final PaymentDAO paymentDAO;
	
	@Override
	public void addPayment(PaymentDTO paymentDTO) {
		
		paymentDAO.insertPayment(paymentDTO);
		
	}

	@Override
	public void modifyPaymentStatus(PaymentDTO paymentDTO) {
		paymentDAO.updatePaymentStatus(paymentDTO);		
	}

	@Override
	public void removePayment(int paymentNo) {
		paymentDAO.deletePayment(paymentNo);		
	}

	@Override
	public void revivalPayment(int PaymentNo) {
		paymentDAO.recoverPayment(PaymentNo);		
	}

	@Override
	public void realRemovePayment(int PaymentNo) {
		paymentDAO.realDeletePayment(PaymentNo);		
	}

	@Override
	public PaymentDTO getPayment(int PaymentNo) {
		return paymentDAO.selectPayment(PaymentNo);
	}

	@Override
	public int getPaymentCount() {
		return paymentDAO.selectPaymentCount();
	}

	@Override
	public List<PaymentDTO> getPaymentList() {
		return paymentDAO.selectPaymentList();
	}

	@Override
	public List<PaymentDTO> getPaymentPageList(Map<String, Object> map) {
		return paymentDAO.selectPaymentPageList(map);
	}

}
