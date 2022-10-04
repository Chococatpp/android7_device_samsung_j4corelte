/*
   Copyright (c) 2016, The CyanogenMod Project
   Copyright (c) 2019, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <string.h>
#include <sys/sysinfo.h>
#include <unistd.h>

#include <android-base/properties.h>
#include <android-base/logging.h>
#include <android-base/strings.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

using android::base::GetProperty;
int property_set(const char *key, const char *value) {
	    return __system_property_set(key, value);
}

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void dalvik_vm(std::string device){
    if (device.find("j4corelte") != std::string::npos || device.find("j4coreltejx") != std::string::npos){
        property_override("dalvik.vm.heapgrowthlimit", "96m");
        property_override("dalvik.vm.heapmaxfree", "8m");
        property_override("dalvik.vm.heapminfree", "512k");
        property_override("dalvik.vm.heapsize", "256m");
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heaptargetutilization","0.75");
        property_override("ro.dalvik.vm.native.bridge","0");
        property_override("dalvik.vm.madvise-random", "true");
        property_override("pm.dexopt.shared","quicken");

    } else if (device.find("j4primelte") != std::string::npos){
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heapgrowthlimit", "192m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heaptargetutilization", "0.75");
        property_override("dalvik.vm.heapminfree", "2m");
        property_override("dalvik.vm.heapmaxfree", "8m");

    } else if (device.find("j6primelte") != std::string::npos){
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heapgrowthlimit", "288m");
        property_override("dalvik.vm.heapsize", "768m");
        property_override("dalvik.vm.heaptargetutilization", "0.75");
        property_override("dalvik.vm.heapminfree", "512k");
        property_override("dalvik.vm.heapmaxfree", "8m");
    }
    
    LOG(ERROR) << "Dalvik vm configs for '" << device.c_str() << "' device\n";
}

void config_dha(std::string device){
    if (device.find("j2y18lte") != std::string::npos || device.find("j2y18ltejx") != std::string::npos){
        //TODO
    }else if (device.find("j4primelte") != std::string::npos){
        //TODO
    } else if (device.find("j6primelte") != std::string::npos){
        //TODO
    }
    LOG(ERROR) << "Dha configs for '" << device.c_str() << "' device\n";

}

void config_lmk(std::string device){
    if (device.find("j4corelte") != std::string::npos || device.find("j4coreltejx") != std::string::npos){
    property_override("ro.lmk.kill_heaviest_task","true");
    property_override("ro.lmk.critical_upgrade","true");
    property_override("ro.lmk.upgrade_pressure","100");
    property_override("ro.lmk.critical","100");
    property_override("ro.lmk.medium","800");
    property_override("ro.lmk.multitask_adj_skip","true");
    property_override("ro.lmk.downgrade_pressure","100");
    property_override("ro.config.tune_fha","true");
    property_override("ro.config.bg_apps_limit","9");
    property_override("ro.config.low_ram","false");
    property_override("ro.cfg.enable_userspace_lmk","true");
    property_override("ro.cfg.enable_reentry_lmk","true");
    property_override("ro.cfg.custom_tm_limit","1000");
    property_override("ro.config.freelimit_val","15");
    property_override("ro.config.custom_sw_limit","400");
    property_override("ro.config.upgrade_pressure","60");
    property_override("ro.cfg.freelimit_val","15");
    property_override("ro.cfg.custom_sw_limit","350");
    property_override("ro.cfg.upgrade_pressure","60");
    
    }else if (device.find("j4primelte") != std::string::npos){
        //TODO
    } else if (device.find("j6primelte") != std::string::npos){
        //TODO
    }
LOG(ERROR) << "LMK configs for '" << device.c_str() << "' device\n";

}

void config_lcd_density(std::string device){
    if (device.find("j2y18lte") != std::string::npos || device.find("j2y18ltejx") != std::string::npos){
        property_override("ro.sf.lcd_density","240");
    }else if ((device.find("j4primelte") != std::string::npos) 
     || (device.find("j6primelte") != std::string::npos)){
        property_override("ro.sf.lcd_density","280");
    }
    LOG(ERROR) << "Density configs for '" << device.c_str() << "' device\n";
}


void vendor_load_properties()
{
    std::string device = GetProperty("ro.product.vendor.device", "");
    //std::string device;
    
    dalvik_vm(device);
    config_dha(device);
    config_lmk(device);
    config_lcd_density(device);

    LOG(ERROR) << "Configs for '" << device.c_str() << "' device\n";
}
