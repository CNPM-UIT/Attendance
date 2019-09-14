package com.example.android;

import android.content.Context;
import android.media.Image;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.android.R;

public class GridAdapter extends BaseAdapter {

    private Context context;
    private String[] ten;
    private int[] logo;

    public GridAdapter(Context context, String[] ten, int[] logo) {
        this.context = context;
        this.ten = ten;
        this.logo = logo;
    }

    @Override
    public int getCount() {
        return ten.length;
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater)context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
        view = layoutInflater.inflate(R.layout.grid_layout, null);
        TextView textView = (TextView)view.findViewById(R.id.namePlacer);
        ImageView imageView = (ImageView)view.findViewById(R.id.imageHolder);

        textView.setText(ten[i]);
        imageView.setImageResource(logo[i]);
        return view;
    }
}
