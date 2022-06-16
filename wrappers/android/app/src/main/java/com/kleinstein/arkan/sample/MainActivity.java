package com.kleinstein.arkan.sample;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.kleinstein.arkan.Greeting;
import com.kleinstein.arkan.sample.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ActivityMainBinding binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        setSupportActionBar(binding.toolbar);

        Greeting greeting = new Greeting();

        binding.greeting.setText(greeting.greeting());
    }
}