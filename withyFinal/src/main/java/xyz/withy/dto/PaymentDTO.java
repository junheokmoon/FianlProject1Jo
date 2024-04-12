package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
�̸�                  ��?       ����      ���� �̸�
------------------- -------- ------------ -------------
PAYMENT_NO          NOT NULL NUMBER       ���� ��ȣ
PAYMENT_USER_NO              NUMBER       ȸ�� ��ȣ
PAYMENT_TICKET_CODE          VARCHAR2(10) ���� �̿�� �ڵ�
PAYMENT_DATE        NOT NULL DATE         ���� ��¥
PAYMENT_STATUS      NOT NULL NUMBER    	  ���� ����
*/

@Data
@Builder
public class PaymentDTO {

	private int paymentNo;
	private int paymentUserNo;
	private String paymentTicketCode;
	private String paymentDate;
	private int paymentStatus;
}
