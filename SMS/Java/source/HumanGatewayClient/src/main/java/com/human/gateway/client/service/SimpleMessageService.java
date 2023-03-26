package com.human.gateway.client.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.human.gateway.client.bean.Message;
import com.human.gateway.client.bean.Response;
import com.human.gateway.client.bean.SimpleMessage;
import com.human.gateway.client.exception.ClientHumanException;
import com.human.gateway.client.service.base.BaseService;
import com.human.gateway.client.service.base.ISimpleBaseService;

public class SimpleMessageService extends BaseService implements ISimpleBaseService {
	
	private static final String SEND = "send";
	private static final String CHECK = "check";

	public SimpleMessageService(String account, String password) {
		super(account, password);
	}
	
	public List<Response> send(Message message) throws ClientHumanException {
		SimpleMessage simpleMessage = (SimpleMessage) message;
		
		validateAccountAndPassword();
		
		String dateSchedule = null;
		if (simpleMessage.getSchedule() != null) {
			dateSchedule = this.dateFormat.format(simpleMessage.getSchedule());
		}
		
		validateMessage(simpleMessage.getTo(), simpleMessage.getMessage(), simpleMessage.getId(), simpleMessage.getFrom(), dateSchedule);
				
		List<NameValuePair> httpPostParameters = new ArrayList<NameValuePair>();
		httpPostParameters.add(new BasicNameValuePair(PARAM_DISPATCH, SEND));
		httpPostParameters.add(new BasicNameValuePair(PARAM_ACCOUNT, this.getAccount()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_CODE, this.getPassword()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_MSG, simpleMessage.getMessage()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_TO, simpleMessage.getTo()));
		
		if (simpleMessage.getFrom() != null) {
			httpPostParameters.add(new BasicNameValuePair(PARAM_FROM, simpleMessage.getFrom()));
		}
		if (simpleMessage.getId() != null) {
			httpPostParameters.add(new BasicNameValuePair(PARAM_ID, simpleMessage.getId()));
		}
		if (dateSchedule != null) {
			httpPostParameters.add(new BasicNameValuePair(PARAM_SCHEDULE, dateSchedule));
		}
		httpPostParameters.add(new BasicNameValuePair(PARAM_CALLBACK_OPTION, String.valueOf(simpleMessage.getCallback().getId())));
		
		return this.sendRequest(httpPostParameters);
	}
	
	public List<Response> query(String id) throws ClientHumanException {
		if (StringUtils.isEmpty(id)) {
			throw new ClientHumanException("Id is empty.");
		}
		validateAccountAndPassword();
				
		List<NameValuePair> httpPostParameters = new ArrayList<NameValuePair>();
		httpPostParameters.add(new BasicNameValuePair(PARAM_ACCOUNT, this.getAccount()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_CODE, this.getPassword()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_DISPATCH, CHECK));
		httpPostParameters.add(new BasicNameValuePair(PARAM_ID, id));
		
		return this.sendRequest(httpPostParameters);
	}
}
