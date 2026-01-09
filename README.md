
## lineage-17.1 device files for Docomo Galaxy S6(SC-05G)

### Working  
 sensor  
 wifi 
 touch panel 
 button 
 sound 
 led 
 bluetooth 
  
### Not working
 ril(LTE, Phone)   
 gps  


### Sensor notes
Japan Model are diffrent from world model   
  
Accelarimeter　     MPU6500  
Gyroscope           MPU6500  
Light               TMD4903  
Proximity           TMD4903  
compass             AK09911  
Magnet              AK09911  
Baro                BMP280  
  
### Other device notes
pmic/mfd/FUELGAUGE  MAX77843  
GPS                 Qualcomm MDM9x35(need qmuxd, mdm_helper)  

### Ril notes
When mdm_helper finished successfully, the device will be created  
```  
/dev/ttyUSB0  
/dev/efs_hsic_bridge  
```  




