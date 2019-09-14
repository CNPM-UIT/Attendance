package com.example.android;

import android.content.Intent;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class AddClassActivity extends AppCompatActivity {

    Button btnCamera;
    Button btnPickfile;
    Intent myfileIntent;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_addclass);

        btnCamera = (Button) findViewById(R.id.btn_camera);
        btnPickfile = (Button) findViewById(R.id.btn_pickfile);

        btnCamera.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
                startActivityForResult(intent, 0);
            }
        });

        btnPickfile.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                myfileIntent = new Intent(Intent.ACTION_GET_CONTENT);
                myfileIntent.setType("*/*");
                startActivityForResult(myfileIntent, 10);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        switch (requestCode){
            case 10:
                if(requestCode== RESULT_OK){
                    String path = data.getData().getPath();
                }
                break;
        }
    }


}
