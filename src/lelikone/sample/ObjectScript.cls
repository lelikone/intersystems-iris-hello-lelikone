Class lelikone.sample.ObjectScript
{

ClassMethod Test() As %Status
{
    set a=42
    write #
    write "**************************** "
    WRITE $ZDATE($HOROLOG),!
    write "Hello Alex! Ниже приведен результат кода Вадима",!
   // write "This is InterSystems IRIS with version ",$zv,!
   // write "Current time is: "_$zdt($h,2),!
     
    write "-----------------------------",!
    write ..Testtwo(),!
    write "-----------------------------",!
    write $REVERSE("Hello Alex!"),!
    write "****************************",!
    return a
}

ClassMethod Testtwo()
{
    return ##class(vadiman.sample.ObjectScript).Test()
}

ClassMethod Typewriter() As %Status
{
    write #
 SET typetext = "Этот текст мы пишем как на печатной машинке"
 SET x=0
  FOR { 
        WRITE $EXTRACT(typetext,x)
        SET x=x+1
        HANG 0.1
      //  write #
        QUIT:x>$LENGTH(typetext)
        
      }
      return ""
}

ClassMethod Pedestrian() As %Status
{
    write #
 SET x=0
  FOR { 
            WRITE " * ",!
            WRITE " * ",!
            WRITE " * ",!
            WRITE " * ",!
        SET x=x+1
        HANG 0.3
        write #
            WRITE " * ",!
            WRITE "***",!
            WRITE " * ",!
            WRITE "* *",!
        HANG 0.3
        write #
        QUIT:x>10
        
      }
      return "STOP"
}

ClassMethod Rotation()
{
    Write #
    set chars = "|/-\"
    set x=1
    set period=0
    DO {
    Write # 
      WRITE $extract(chars,x),!!
        HANG 0.1
      SET x=x+1 
      SET period=period+1
      if (x=5) set x=1
    } WHILE period<70

    write !
    return "END"
}

}
