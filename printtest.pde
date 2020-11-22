PrintWriter[] a = new PrintWriter[10];
PrintWriter b;
PrintWriter c;

void setup() {
  b=createWriter("b.txt");
  c=createWriter("c.txt");
  
  for(int i=0;i<10;i++) {
    a[i] = createWriter(i+".txt");
  }
  
  for(int i=0;i<a.length;i++) {
    a[i].println("hi");
  }
  
  b.println("ooft");
  c.println("ooft");
  b.flush();
  b.close();
  
  for(float i=1;i<2000000000;) {
    i*=1.0001;
    println(i);
  }
  
  for(int i=0;i<a.length;i++) {
    a[i].flush();
    a[i].close();
  }
  
  c.flush();
  c.close();
}

void draw() {
  point(random(100), random(100));
}
