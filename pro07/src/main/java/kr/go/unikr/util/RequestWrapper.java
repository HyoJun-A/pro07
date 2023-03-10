package kr.go.unikr.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class RequestWrapper extends HttpServletRequestWrapper {
	
	public RequestWrapper(HttpServletRequest httpServletRequest) {
		super(httpServletRequest); // super.request = httpServletRequest;
	}
	private byte[] bytes = null;
	public ServletInputStream getInputStream()  throws IOException {
		if (bytes==null) { // first time
			InputStream in = super.getInputStream();
			bytes = new byte[super.getContentLength()];
			for(int r, offset=0; (r = in.read(bytes,offset,bytes.length-offset))>-1 ; ) { 	
				offset += r; 
			}
		}
		final InputStream in = new ByteArrayInputStream(bytes);
		
		return new ServletInputStream() {			
			public int read()  throws IOException {
				return in.read();
			}
		};
	}
	public BufferedReader getReader() throws IOException {
		return new BufferedReader(new InputStreamReader(getInputStream()));
	}
}
