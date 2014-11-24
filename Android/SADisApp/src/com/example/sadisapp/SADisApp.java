package com.example.sadisapp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import android.os.AsyncTask;
import android.os.Bundle;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;
import android.widget.ExpandableListView;

// TODO help window
// https://blahti.wordpress.com/2012/02/14/how-to-build-simple-help-in-android/
public class SADisApp extends Activity {
	private EditText codeField;

	private ExpandableListView expListView;
	private ExpandableListAdapter listAdapter;
	private List<CharSequence> listHeader;
    private HashMap<CharSequence, List<String>> listChild;
    
    private WebServiceActivity webService;
    
    private AlertDialog searchingDialog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.activity_sadis_app);
		codeField = (EditText)findViewById(R.id.editText);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.sadis_app, menu);
		return true;
	}

   public void send(View view){
	   String code = codeField.getText().toString();

	   searchingDialog = new AlertDialog.Builder(this)
           .setTitle("Buscando solicitacão")
           .setMessage("Por favor aguarde enquanto buscamos sua solicitacão.")
           .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
        	    public void onClick(DialogInterface dialog, int which) { 
        	        // If web service is still running, cancel it
        	        if (webService != null && webService.getStatus() == AsyncTask.Status.RUNNING){
        	            webService.cancel();
        	            }
        	        }
        	    })
            .setIcon(android.R.drawable.ic_dialog_info)
            .show();
    	webService = new WebServiceActivity(this);
    	webService.execute(code);
   }
   
   public void goBack(){
		setContentView(R.layout.activity_sadis_app);
		codeField = (EditText)findViewById(R.id.editText);
   }
   
   private void showError(){
	   // If search dialog is being shown, close it
	   if (searchingDialog != null) searchingDialog.dismiss();

	   new AlertDialog.Builder(this)
	       .setTitle("Erro na conexão")
	       .setMessage("Ocorreu um erro na conexão com a internet.")
	       .setNegativeButton(android.R.string.ok, new DialogInterface.OnClickListener() {
	           public void onClick(DialogInterface dialog, int which) { }
	        })
	        .setIcon(android.R.drawable.ic_dialog_alert)
	        .show();
   }
      
   private void showNotFound(){
	   // If search dialog is being shown, close it
	   if (searchingDialog != null) searchingDialog.dismiss();

	   new AlertDialog.Builder(this)
	       .setTitle("Solicitação não encontrada")
	       .setMessage("Solicitação não encontrada.\nVocê tem certeza de que digitou o codigo corretamente?")
	       .setNegativeButton(android.R.string.ok, new DialogInterface.OnClickListener() {
	           public void onClick(DialogInterface dialog, int which) { }
	        })
	        .setIcon(android.R.drawable.ic_dialog_alert)
	        .show();
   }
      
   public void showResults(String result){
   	   if (result == WebServiceActivity.ERROR_CONNECTION) showError();
   	   else{
	   	   // If search dialog is being shown, close it
		   if (searchingDialog != null) searchingDialog.dismiss();
	
		   // Parse results
		   if (parseResults(result)){
			   setContentView(R.layout.result);
			   
			   // Create ExpandableListView adapter
			   expListView = (ExpandableListView)findViewById(R.id.expList);
				
			   // Create list adapter
			   // Header and child must exist, otherwise it throws an error on ExpandableListView.setAdapter
			   listAdapter = new ExpandableListAdapter(this, listHeader, listChild);
			   expListView.setAdapter(listAdapter);
		   }
   	   }
   }
   
   private Boolean parseResults(String result){
	   try{
	       listHeader = new ArrayList<CharSequence>();
	       listChild = new HashMap<CharSequence, List<String>>();

		   JSONObject jsonReader = new JSONObject(result);
		   JSONArray jsonArray = jsonReader.getJSONArray("data");

		   // For loop - TODO
		   jsonReader = jsonArray.getJSONObject(0);
		   String date = jsonReader.getString("date");
		   String status = new String(jsonReader.getString("status").getBytes("ISO-8859-1"), "UTF-8");
		   String message = jsonReader.getString("message");
		   
		   if (status.contentEquals(new String("Solicitação não encontrada".getBytes("UTF-8"), "UTF-8"))){
			   showNotFound();
			   return false;
		   }

		   System.out.println(jsonReader);

	       // Adding child data
	       listHeader.add(status);

	       // Adding child data
	       List<String> list = new ArrayList<String>();
	       list.add(date);
	       list.add(message);

	       listChild.put(listHeader.get(0), list); // Header, Child data
	       // End for loop - TODO
	       
	       return true;
	   } catch (Exception e){
		   showError();
		   return false;
	   }		   
   }
   
   @Override
   public boolean onKeyDown(int keyCode, KeyEvent event) {
	    if (keyCode == KeyEvent.KEYCODE_BACK
	            && event.getRepeatCount() == 0) {
	        event.startTracking();
	        return true;
	    }
	    return super.onKeyDown(keyCode, event);
	}

    @Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
	    if (keyCode == KeyEvent.KEYCODE_BACK && event.isTracking()
	            && !event.isCanceled()) {
	    	goBack();
	    	return true;
	    }
	    return super.onKeyUp(keyCode, event);
	}
}
