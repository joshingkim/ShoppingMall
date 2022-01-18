package kr.co.domain;

import java.io.Serializable;
import java.util.Objects;

public class ExchangeRefundVO implements Serializable {

	private static final long serialVersionUID = 1L;

	private int exchange_refund_no;
	private String member_id;
	private int order_no;
	private String exchange_refund_date;
	private String exchange_refund_content;
	private int exchange_refund_code;

	public ExchangeRefundVO() {
	}

	public ExchangeRefundVO(int exchange_refund_no, String member_id, int order_no, String exchange_refund_date,
			String exchange_refund_content, int exchange_refund_code) {
		super();
		this.exchange_refund_no = exchange_refund_no;
		this.member_id = member_id;
		this.order_no = order_no;
		this.exchange_refund_date = exchange_refund_date;
		this.exchange_refund_content = exchange_refund_content;
		this.exchange_refund_code = exchange_refund_code;
	}

	int getExchange_refund_no() {
		return exchange_refund_no;
	}

	void setExchange_refund_no(int exchange_refund_no) {
		this.exchange_refund_no = exchange_refund_no;
	}

	String getMember_id() {
		return member_id;
	}

	void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	int getOrder_no() {
		return order_no;
	}

	void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	String getExchange_refund_date() {
		return exchange_refund_date;
	}

	void setExchange_refund_date(String exchange_refund_date) {
		this.exchange_refund_date = exchange_refund_date;
	}

	String getExchange_refund_content() {
		return exchange_refund_content;
	}

	void setExchange_refund_content(String exchange_refund_content) {
		this.exchange_refund_content = exchange_refund_content;
	}

	int getExchange_refund_code() {
		return exchange_refund_code;
	}

	void setExchange_refund_code(int exchange_refund_code) {
		this.exchange_refund_code = exchange_refund_code;
	}

	static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(exchange_refund_code, exchange_refund_content, exchange_refund_date, exchange_refund_no,
				member_id, order_no);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ExchangeRefundVO other = (ExchangeRefundVO) obj;
		return exchange_refund_code == other.exchange_refund_code
				&& Objects.equals(exchange_refund_content, other.exchange_refund_content)
				&& Objects.equals(exchange_refund_date, other.exchange_refund_date)
				&& exchange_refund_no == other.exchange_refund_no && Objects.equals(member_id, other.member_id)
				&& order_no == other.order_no;
	}

	@Override
	public String toString() {
		return "ExchangeRefundVO [exchange_refund_no=" + exchange_refund_no + ", member_id=" + member_id + ", order_no="
				+ order_no + ", exchange_refund_date=" + exchange_refund_date + ", exchange_refund_content="
				+ exchange_refund_content + ", exchange_refund_code=" + exchange_refund_code + "]";
	}

}
