package com.human.gateway.client.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.message.BasicNameValuePair;

import com.human.gateway.client.bean.FileResource;
import com.human.gateway.client.bean.ListResource;
import com.human.gateway.client.bean.Message;
import com.human.gateway.client.bean.MultipleMessage;
import com.human.gateway.client.bean.Response;
import com.human.gateway.client.enumerator.LayoutTypeEnum;
import com.human.gateway.client.exception.ClientHumanException;
import com.human.gateway.client.service.base.BaseService;
import com.human.gateway.client.service.base.IMultipleBaseService;

public class MultipleMessageService extends BaseService implements IMultipleBaseService {
	
	private static final String UPFILE = "upfile";
	private static final String SEND_MULTIPLE = "sendMultiple";
	private static final String CHECK_MULTIPLE = "checkMultiple";
	private static final String PARAM_LIST = "list";
	private static final String PARAM_TYPE = "type";
	private static final String PARAM_ID_LIST = "idList";	
		
	public MultipleMessageService(String account, String password) {
		super(account, password);
	}
	
	public List<Response> send(Message message) throws ClientHumanException {
		MultipleMessage multipleMessage = (MultipleMessage) message;
		validateAccountAndPassword();
				
		validateSend(multipleMessage);
		
		if (multipleMessage instanceof ListResource) {
			List<NameValuePair> httpPostParameters = new ArrayList<NameValuePair>();
			httpPostParameters.add(new BasicNameValuePair(PARAM_ACCOUNT, this.getAccount()));
			httpPostParameters.add(new BasicNameValuePair(PARAM_CODE, this.getPassword()));
			httpPostParameters.add(new BasicNameValuePair(PARAM_DISPATCH, SEND_MULTIPLE));
			httpPostParameters.add(new BasicNameValuePair(PARAM_CALLBACK_OPTION, String.valueOf(message.getCallback().getId())));
			httpPostParameters.add(new BasicNameValuePair(PARAM_TYPE, multipleMessage.getType().getType().toString()));
			httpPostParameters.add(new BasicNameValuePair(PARAM_LIST, multipleMessage.getContent()));
			return this.sendRequest(httpPostParameters);
		} else if (multipleMessage instanceof FileResource) {
			FileResource fileResource = (FileResource) multipleMessage;
			FileBody fileBody = new FileBody(fileResource.getFile(), ContentType.DEFAULT_BINARY);
			MultipartEntityBuilder builder = MultipartEntityBuilder.create();
			builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
			builder.addPart(UPFILE, fileBody);
			builder.addPart(PARAM_DISPATCH, new StringBody(SEND_MULTIPLE, ContentType.MULTIPART_FORM_DATA));
			builder.addPart(PARAM_ACCOUNT, new StringBody(this.getAccount(), ContentType.MULTIPART_FORM_DATA));
			builder.addPart(PARAM_CODE, new StringBody(this.getPassword(), ContentType.MULTIPART_FORM_DATA));
			builder.addPart(PARAM_CALLBACK_OPTION, new StringBody(multipleMessage.getCallback().toString(), ContentType.MULTIPART_FORM_DATA));
			builder.addPart(PARAM_TYPE, new StringBody(multipleMessage.getType().getType().toString(), ContentType.MULTIPART_FORM_DATA));
			HttpEntity entity = builder.build();
			return this.sendRequest(entity);
		} else {
			throw new ClientHumanException("Message is invalid.");
		}
	}
	
	public List<Response> query(String[] ids) throws ClientHumanException {
		if ((ids == null) || (ids.length == 0)) {
			throw new ClientHumanException("Id is empty.");
		} else if (ids.length == 1) {
			SimpleMessageService sMessageService = new SimpleMessageService(this.getAccount(), this.getPassword());
			return sMessageService.query(ids[0]);
		}
		validateAccountAndPassword();
						
		List<NameValuePair> httpPostParameters = new ArrayList<NameValuePair>();
		httpPostParameters.add(new BasicNameValuePair(PARAM_ACCOUNT, this.getAccount()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_CODE, this.getPassword()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_DISPATCH, CHECK_MULTIPLE));
		
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < ids.length; i++) {
			if (i == (ids.length-1)) {
				sb.append(ids[i]);
			} else {
				sb.append(ids[i]).append(";");
			}
		}
		httpPostParameters.add(new BasicNameValuePair(PARAM_ID_LIST, sb.toString()));
		
		return this.sendRequest(httpPostParameters);
	}
	
	private boolean validateSend(MultipleMessage message) throws ClientHumanException {
		String content = message.getContent();
		if (StringUtils.isEmpty(content)) {
			throw new ClientHumanException("Was not informed to send a list of messages.");
		}
		
		String[] line = null;
		if (content.contains("\r\n")) {
			line = content.split("\r\n");
		} else {
			line = content.split("\n");
		}
		
		for (int i = 0; i < line.length; i++) {
			validateMessage(message.getType(), line[i]);
		}
		return true;
	}
	
	private void validateMessage(LayoutTypeEnum type, String linha) throws ClientHumanException {
		String[] fields = linha.split(";");
		
		if (LayoutTypeEnum.TYPE_A.equals(type)) {
			if (fields.length != 2) {
				throw new ClientHumanException("File format invalid.");
			}
			
			this.validateMessage(fields[0], fields[1]);
		} else if (LayoutTypeEnum.TYPE_B.equals(type)) {
			if (fields.length != 3) {
				throw new ClientHumanException("File format invalid.");
			}

			this.validateMessage(fields[0], fields[1], fields[2]);
		} else if (LayoutTypeEnum.TYPE_C.equals(type)) {
			if (fields.length != 3) {
				throw new ClientHumanException("File format invalid.");
			}
			
			this.validateMessage(fields[0], fields[1], fields[2], null);
		} else if (LayoutTypeEnum.TYPE_D.equals(type)) {
			if (fields.length != 4) {
				throw new ClientHumanException("File format invalid.");
			}
			
			this.validateMessage(fields[0], fields[1], fields[2], fields[3]);
		} else if (LayoutTypeEnum.TYPE_E.equals(type)) {
			if (fields.length != 5) {
				throw new ClientHumanException("File format invalid.");
			}
			
			this.validateMessage(fields[0], fields[1], fields[2], fields[3], fields[4]);
		} else {
			throw new ClientHumanException("Type of file format invalid.");
		}
	}
}
