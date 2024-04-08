package xyz.withy.dto;

import lombok.Builder;
import lombok.Data;

/*
�̸�             ��?       ����
-------------- -------- --------------
NOTICE_NO      NOT NULL NUMBER          �۹�ȣ
NOTICE_TITLE   NOT NULL VARCHAR2(100)   ����
NOTICE_CONTENT NOT NULL VARCHAR2(1000)  ����
NOTICE_IMAGE            VARCHAR2(100)   �̹���
NOTICE_DATE             DATE            �ۼ���¥
NOTICE_UPDATE           DATE            ������¥
NOTICE_COUNT            NUMBER          ��ȸ��
NOTICE_USER_NO          NUMBER(5)       ȸ����ȣ
*/

@Data
@Builder
public class NoticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeImage;
	private String noticeDate;
	private String noticeUpdate;
	private int noticeCount;
	private int noticeUserNo;
}
