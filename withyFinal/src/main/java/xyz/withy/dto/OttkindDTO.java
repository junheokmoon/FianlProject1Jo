package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
�̸�        ��?       ����      ���� �̸�
--------- -------- ------------ ----------
OTT_NO    NOT NULL NUMBER       OTT ��ȣ
OTT_NAME  NOT NULL VARCHAR2(500) OTT �̸�
OTT_IMAGE NOT NULL VARCHAR2(1000) OTT �̹���
OTT_CD             VARCHAR2(100) OTT �ڵ�
*/

@Data
@Builder
public class OttkindDTO {

	private int ottNo;
	private String ottName;
	private String ottImage;
	private String ottcd;


}