package com.example.android;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class HomeActivity extends AppCompatActivity {

    GridView gridView;
    String[] name ={
            "Tao lop", "Quan ly lop", "Sua lop", "Xoa lop"
    };
    int[] logo = {
            R.drawable.ic_cgpa,R.drawable.ic_attendence,
            R.drawable.ic_schedule, R.drawable.ic_notes
    };
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        gridView = (GridView)findViewById(R.id.grid);

        GridAdapter gridAdapter =  new GridAdapter(this,name,logo);
        gridView.setAdapter(gridAdapter);

        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Intent intent = new Intent(HomeActivity.this, AddClassActivity.class);
                startActivity(intent);
            }
        });
    }
}
