package xyz.withy.mapper;

import java.util.List;
import java.util.Map;

import xyz.withy.dto.PaymentDTO;

public interface PaymentMapper {

	int insertPayment(PaymentDTO paymentDTO);
	int deletePayment(int paymentNo);
	int updatePaymentStatus(PaymentDTO paymentDTO);
	int recoverPayment(int paymentNo); 			// 사실상 status 1번으로 변경
	int realDeletePayment(int paymentNo); 		// 진짜 순도 100% delete
	PaymentDTO selectPayment(int paymentNo); 		// 그냥 검색
	int selectPaymentCount(); 						// 티켓의 전체 갯수
	List<PaymentDTO> selectPaymentList(); 			// 전체 상품(이용권) 보기
	List<PaymentDTO> selectPaymentPageList(Map<String, Object> map); 	// 페이징 처리된 리스트
}
