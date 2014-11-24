package com.example.sadisapp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URI;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;

// Codigo de solicitacao teste - 1611612981
// Bom tutorial de acesso a internet:
// http://www.tutorialspoint.com/android/android_php_mysql.htm
public class WebServiceActivity  extends AsyncTask<String,Void,String>{
       HttpGet request;
       private Context context;
       
       final static String ERROR_CONNECTION = "Erro ao conectar a internet.";

	   public WebServiceActivity(Context context) {
		   this.context = context;
	   }

	   protected void onPreExecute(){

	   }
	   
	   public void cancel(){
		   if (null != request){
			   request.abort();
		   }
	   }
	   
	   private boolean isNetworkAvailable() {
		    ConnectivityManager connectivityManager 
		          = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
		    return activeNetworkInfo != null && activeNetworkInfo.isConnected();
		}

	   @Override
	   protected String doInBackground(String... arg0) {
		   try{
			   // Check if there's internet connection
			   if (isNetworkAvailable()){
	               String code = (String)arg0[0];
		           request = new HttpGet(new URI("http://www.sadisweb.esy.es/checarSolicitacao.php?CodSolic="+code));
		           HttpParams httpParameters = new BasicHttpParams();
			       // Set the timeout in milliseconds until a connection is established.
			       // The default value is zero, that means the timeout is not used. 
			       HttpConnectionParams.setConnectionTimeout(httpParameters, 3000);
			       // Set the default socket timeout (SO_TIMEOUT) 
			       // in milliseconds which is the timeout for waiting for data.
			       HttpConnectionParams.setSoTimeout(httpParameters, 5000);
		
		           HttpClient client = new DefaultHttpClient(httpParameters);
			       HttpResponse response = client.execute(request);
	
			       BufferedReader in = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
	
		           StringBuffer sb = new StringBuffer("");
		           String line="";
		           while ((line = in.readLine()) != null) sb.append(line);
	
		           in.close();
	
		           return sb.toString();
			   } else return ERROR_CONNECTION;
	       } catch (Exception e){
	    	   return ERROR_CONNECTION;
	       }
	   }

	   @Override
	   // http://www.androidhive.info/2012/01/android-json-parsing-tutorial/
	   protected void onPostExecute(String result){
		   ((SADisApp)context).showResults(result);
	   }
	}