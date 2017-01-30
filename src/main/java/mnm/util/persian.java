/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.util;

import com.ghasemkiani.util.icu.PersianCalendar;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.util.ULocale;
import java.util.Date;
import java.util.TimeZone;

/**
 *
 * @author mohammadghasemy
 */
public class persian {
    public String persiandate(Date d){
        if(d == null)
            return "بسته خریداری نشده.";
        calendar.setTime( d);
        SimpleDateFormat sds =(SimpleDateFormat)calendar.getDateTimeFormat(DateFormat.LONG,DateFormat.MEDIUM,uLocale);
        //date=sds.format(calendar.getTime());
        return sds.format(calendar.getTime());
    }
    public String persianclock(Date d){
        if(d == null)
            return "بسته خریداری نشده.";
        calendar.setTime( d);
        SimpleDateFormat sds =(SimpleDateFormat)calendar.getDateTimeFormat(DateFormat.NONE,DateFormat.MEDIUM,uLocale);
        //date=sds.format(calendar.getTime());
        return sds.format(calendar.getTime());
    }
    public String persiandataonly(Date d){
        if(d == null)
            return "بسته خریداری نشده.";
        calendar.setTime( d);
        SimpleDateFormat sds =(SimpleDateFormat)calendar.getDateTimeFormat(DateFormat.MEDIUM,DateFormat.NONE,uLocale);
        //date=sds.format(calendar.getTime());
        return sds.format(calendar.getTime());
    }
	ULocale  uLocale = new ULocale("fa_IR");
    TimeZone timeZone = TimeZone.getTimeZone(TimeZone.getDefault().getID());
    PersianCalendar calendar = new PersianCalendar( uLocale);
}
