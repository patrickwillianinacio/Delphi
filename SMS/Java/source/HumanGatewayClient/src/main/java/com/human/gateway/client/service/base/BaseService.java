package com.human.gateway.client.service.base;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.entity.mime.MultipartEntity;

import com.human.gateway.client.bean.Response;
import com.human.gateway.client.bean.SimpleMessage;
import com.human.gateway.client.exception.ClientHumanException;
import com.human.gateway.client.util.HttpClientHelper;

public abstract class BaseService {

	private static final String ZENVIA_API = "https://api-http.zenvia.com/GatewayIntegration/msgSms.do";
	
	public static final String PARAM_TO = "to";
	public static final String PARAM_MSG = "msg";
	public static final String PARAM_ID = "id";
	public static final String PARAM_FROM = "from";
	public static final String PARAM_SCHEDULE = "schedule";
	public static final String PARAM_CALLBACK_OPTION = "callbackOption";

	public static final String PARAM_CODE = "code";
	public static final String PARAM_ACCOUNT = "account";
	public static final String PARAM_DISPATCH = "dispatch";

	public static final int BODY_MAX_LENGTH = 150;

	public static final int ID_MAX_LENGTH = 20;

	public static final String PATTERN_FORMAT = "dd/MM/yyyy HH:mm:ss";

	private String account;
	private String password;
	private HttpClientHelper http;
	protected SimpleDateFormat dateFormat;

	public BaseService(String account, String password) {
		this(account, password, new HttpClientHelper(ZENVIA_API));
	}

	public BaseService(String account, String password, HttpClientHelper httpHelper) {
		this.account = account;
		this.password = password;
		this.http = httpHelper;
		this.dateFormat = new SimpleDateFormat(PATTERN_FORMAT);
	}

	public String getAccount() {
		return account;
	}

	public String getPassword() {
		return password;
	}

	protected void validateMessage(String to, String message, String id, String from, String schedule)
			throws ClientHumanException {
		try {
			if (schedule != null) {
				this.dateFormat.parse(schedule);
			}
		} catch (ParseException e) {
			throw new ClientHumanException("Date invalid.");
		}

		this.validateMessage(to, message, id, from);
	}

	protected void validateMessage(String to, String message, String id, String from) throws ClientHumanException {
		if (id != null && id.length() > ID_MAX_LENGTH) {
			throw new ClientHumanException("Field \"" + PARAM_ID + "\" can not have more than " + ID_MAX_LENGTH + " characters.");
		}

		this.validateMessage(to, message, from);
	}

	protected void validateMessage(String to, String message, String from) throws ClientHumanException {
		int length = BODY_MAX_LENGTH;
		if (from != null) {
			length -= from.length();
		}

		this.validateMessage(to, message, length);
	}

	protected void validateMessage(String to, String message) throws ClientHumanException {
		int length = BODY_MAX_LENGTH;
		this.validateMessage(to, message, length);
	}

	private void validateMessage(String to, String message, int length) throws ClientHumanException {
		if (to == null || to.trim().isEmpty()) {
			throw new ClientHumanException("Field \"" + PARAM_TO + "\" is required.");
		}

		if (message == null || message.trim().isEmpty()) {
			throw new ClientHumanException("Field \"" + PARAM_MSG + "\" is required.");
		} else {
			if (length < message.length()) {
				throw new ClientHumanException("Fields \"" + PARAM_MSG + "\" + \"" + PARAM_FROM + "\" can not exceed " + BODY_MAX_LENGTH + " characters.");
			}
		}
	}

	protected void validateAccountAndPassword() throws ClientHumanException {
		if (StringUtils.isEmpty(this.getAccount())) {
			throw new ClientHumanException("Field \"" + PARAM_ACCOUNT + "\" is required.");
		}
		if (StringUtils.isEmpty(this.getPassword())) {
			throw new ClientHumanException("Field \"" + PARAM_CODE + "\" is required.");
		}
	}

	protected List<Response> sendRequest(HttpEntity entity) throws ClientHumanException {
		return http.multipleRequest(entity);
	}
	
	protected List<Response> sendRequest(List<NameValuePair> httpPostParameters) throws ClientHumanException {
		return http.simpleRequest(httpPostParameters);
	}
	
	public List<SimpleMessage> requestAndGetMessages(List<NameValuePair> urlParameters) throws ClientHumanException {
		return http.requestAndGetMessages(urlParameters);
	}
	
}