package com.lzhpo.common.business;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public  class Index {

    private  static  List<String> indexList ;
    private  static  List<String> radioList ;


    public static List<String> getIntegerIndex() {

        if (indexList == null){
            indexList =   Stream.of( "F9","H9",
                    "D10","F10","H10",
                    "F11","H11",
                    "D12","F12",
                    "H13",
                    "H14",
                    "H15",
                    "H16",
                    "D17","F17",
                    "D18","F18","H18",
                    "D20", "E20","F20","G20","H20",
                    "D21", "E21","F21","G21","H21").collect(Collectors.toList());
            return indexList;
        }
        return indexList;
    }
    public static List<String>  getRadioIndex() {
        if (radioList == null){
            radioList =   Stream.of( "H12","H17").collect(Collectors.toList());
            return radioList;
        }
        return radioList;
    }
}
