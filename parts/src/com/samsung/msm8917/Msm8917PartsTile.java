package com.samsung.msm8917;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.service.quicksettings.TileService;

import com.samsung.msm8917.DeviceSettings;
import com.samsung.msm8917.DeviceSettingsActivity;

public class Msm8917PartsTile extends TileService {

    @Override
    public void onClick() {
        try {
            Intent intent = new Intent(this, DeviceSettingsActivity.class);
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivityAndCollapse(intent);
        } catch (ActivityNotFoundException ignored) {
            // At this point, the app is most likely hidden and set to only open from Settings
            Intent intent = new Intent(this, DeviceSettings.class);
            startActivityAndCollapse(intent);
        }
    }
}
