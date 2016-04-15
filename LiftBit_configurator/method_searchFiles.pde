String[] configurationList = new String[100];

void searchFiles() {
  
  File dir = new File("/");
  String[] list = dir.list();
    for (int i=1; i<list.length; i++) {
      if (list[i].endsWith(".csv")) {
        println("Found " +  list[i]);       
        //configurationList[int(list[i].substring(0,2))] = list[i].substring(4,list[i].length()-4);
        configurationList[i-1] = list[i];
     }
    }
}