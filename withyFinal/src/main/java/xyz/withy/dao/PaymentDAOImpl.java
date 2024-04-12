package xyz.withy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.withy.dto.PaymentDTO;
import xyz.withy.mapper.PaymentMapper;

@Repository
@RequiredArgsConstructor
public class PaymentDAOImpl implements PaymentDAO{

	private final SqlSession sqlSession;
	
	@Override
	public int insertPayment(PaymentDTO paymentDTO) {
		return sqlSession.getMapper(PaymentMapper.class).insertPayment(paymentDTO);
	}

	@Override
	public int deletePayment(int paymentNo) {
		return sqlSession.getMapper(PaymentMapper.class).deletePayment(paymentNo);
	}

	@Override
	public int updatePaymentStatus(PaymentDTO paymentDTO) {
		return sqlSession.getMapper(PaymentMapper.class).updatePaymentStatus(paymentDTO);
	}

	@Override
	public int recoverPayment(int paymentNo) {
		return sqlSession.getMapper(PaymentMapper.class).recoverPayment(paymentNo);
	}

	@Override
	public int realDeletePayment(int paymentNo) {
		return sqlSession.getMapper(PaymentMapper.class).realDeletePayment(paymentNo);
	}

	@Override
	public PaymentDTO selectPayment(int paymentNo) {
		return sqlSession.getMapper(PaymentMapper.class).selectPayment(paymentNo);
	}

	@Override
	public int selectPaymentCount() {
		return sqlSession.getMapper(PaymentMapper.class).selectPaymentCount();
	}

	@Override
	public List<PaymentDTO> selectPaymentList() {
		return sqlSession.getMapper(PaymentMapper.class).selectPaymentList();
	}

	@Override
	public List<PaymentDTO> selectPaymentPageList(Map<String, Object> map) {
		return sqlSession.getMapper(PaymentMapper.class).selectPaymentPageList(map);
	}

}
