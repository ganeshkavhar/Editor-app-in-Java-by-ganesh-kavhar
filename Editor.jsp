Code :<br />
import javax.swing.JOptionPane;<br />
import java.net.*;</p>
<p>/*@(#)Check.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>/**<br />
* This is to check the molecule combinations in<br />
* application.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class Check{<br />
        static Result r=null;</p>
<p>	public static String check(String tem){</p>
<p>			switch(Integer.parseInt(tem)){<br />
				case 3:<br />
					int ans=JOptionPane.showConfirmDialog(null,”Single Atom”, “Single<br />
Atom”, JOptionPane.YES_NO_OPTION);<br />
					if(ans==1){<br />
						int ansthr=JOptionPane.showConfirmDialog(null,”Three Atoms”,<br />
“Single<br />
Atom”, JOptionPane.YES_NO_OPTION);<br />
						if(ansthr==1)<br />
							return “.gif”;<br />
						else{<br />
								JOptionPane.showMessageDialog(null,”Presence of sunlight<br />
 and<br />
absence of halogen”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
							return “23”;<br />
						}<br />
					}<br />
					else{<br />
						JOptionPane.showMessageDialog(null,”<html>Presence of Anhyd.<br />
AlCl<sub>3</sub><br />
 and temprature between 310 to 320 K”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
						return tem;<br />
					}<br />
				case 5:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of Anhyd.<br />
FeBr<sub>3</sub><br />
 and temprature between 310 to 320 K”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 7:<br />
					return tem;<br />
				case 9:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of<br />
SO<sub>3</sub></p>
<p> and temprature 330 K”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 11:<br />
					return tem;<br />
				case 13:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of<br />
H<sub>2</sub>SO<sub>4</sub><br />
 and temprature 330 K”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 15:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of Anhydrous<br />
and<br />
AlCl<sub>3</sub>”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 17:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of Anhydrous<br />
and<br />
AlCl<sub>3</sub>”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 19:<br />
					JOptionPane.showMessageDialog(null,”<html>Presence of Anhydrous<br />
and<br />
AlCl<sub>3</sub>”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				case 21:<br />
					JOptionPane.showMessageDialog(null,”3 Atoms of Hydrogen and<br />
Presence<br />
of Ni catalyst<br />
 and temprature between 473-573 K”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;<br />
				/*case 23:<br />
					JOptionPane.showMessageDialog(null,”Presence of sunlight<br />
 and<br />
absence of halogen”);<br />
                                        try{<br />
                                                r.setVisible(false);<br />
                                        }catch(Exception e){}<br />
					return tem;*/<br />
				case 25:<br />
						JOptionPane.showMessageDialog(null,”3 Atoms of Ozone”);<br />
						return tem;<br />
				default:<br />
					return “.gif”;<br />
			}</p>
<p>		}<br />
}</p>
<p>/////////////////////////End OF Check.java///////////////////////////</p>
<p>/*<br />
 * @(#)FinalImageCanvas.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import java.awt.*;<br />
import java.awt.event.*;<br />
import java.awt.image.*;<br />
import javax.swing.*;<br />
import java.net.*;</p>
<p>/**<br />
* This is to show the result of adding two<br />
* molecules.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class FinalImageCanvas extends JPanel implements<br />
MouseListener,MouseMotionListener{</p>
<p>	int x=0,y=0;<br />
	boolean dragFlag=false;<br />
	boolean presFlag=false;<br />
	Image image;<br />
      String name=””;<br />
	GUIDisplayApplet jp=null;<br />
	public FinalImageCanvas(String name,GUIDisplayApplet jp) {<br />
                this.name=name;<br />
			this.jp=jp;<br />
		    MediaTracker media = new MediaTracker(this);<br />
		    try{<br />
                		image =Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
			}catch(Exception e1){</p>
<p>//System.out.println(“Error========>”+e1+”—————–“+jp.url+name);<br />
			}<br />
                media.addImage(image, 0);<br />
                try {<br />
                         media.waitForID(0);<br />
                } catch (Exception e) {}<br />
		    addMouseListener(this);<br />
		    addMouseMotionListener(this);<br />
	  }<br />
	  public FinalImageCanvas(){}<br />
	 public FinalImageCanvas(ImageProducer imageProducer) {<br />
	 image = createImage(imageProducer);<br />
	}<br />
	 public void paintComponent(Graphics g) {<br />
		Graphics2D g2d=(Graphics2D)g;<br />
		super.paintComponent(g2d);<br />
		g2d.setColor(Color.red);<br />
		g2d.setFont(new Font(“Dialog”,Font.BOLD,15));<br />
		g2d.drawString(“Result”,10,15);<br />
	 	if(image!=null && dragFlag==false)<br />
	 		g2d.drawImage(image, 85,5, this);<br />
		else if(image!=null && dragFlag==true){<br />
			g2d.drawImage(image, x,y, this);<br />
			dragFlag=false;<br />
		}<br />
		if(presFlag==true){<br />
			g2d.drawString(“© Super InfoSoft”,x,y);<br />
			presFlag=false;</p>
<p>		}</p>
<p>	}<br />
	public void setImage(String name){<br />
			System.out.println(“Name===>”+name);<br />
			try{<br />
		    		image = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
			}catch(Exception e){}<br />
			repaint();<br />
	}<br />
	public void update(Graphics g){<br />
		paint(g);<br />
	}</p>
<p>	public void mousePressed(MouseEvent evt){<br />
			presFlag=true;<br />
			x=evt.getX();<br />
			y=evt.getY();<br />
			repaint();<br />
	    }<br />
          public void mouseEntered(MouseEvent evt){<br />
	    }<br />
          public void mouseExited(MouseEvent evt){}<br />
          public void mouseClicked(MouseEvent evt){<br />
	    }<br />
          public void mouseReleased(MouseEvent evt){<br />
			repaint();<br />
	    }<br />
          public void mouseDragged(MouseEvent evt){<br />
			dragFlag=true;<br />
			x=evt.getX()-10;<br />
			y=evt.getY()-15;<br />
			repaint();<br />
	    }<br />
          public void mouseMoved(MouseEvent evt){}</p>
<p>}<br />
////////////////End of FinalImageCanvas.java//////////////////////////</p>
<p>/*<br />
 * @(#)GUI.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import javax.swing.*;<br />
import java.awt.*;<br />
import java.awt.event.*;<br />
import java.util.*;</p>
<p>/**<br />
* This is the Main frame to show the GUI of this<br />
* application.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class GUI extends JInternalFrame implements ActionListener{</p>
<p>		public static MyImageCanvas imgOne=null;<br />
		public static MyImageCanvas imgTwo=null;<br />
		public static FinalImageCanvas fix=null;<br />
		JPanel inner=null;<br />
		JButton submit=new JButton(“Submit”);<br />
		JButton first=new JButton(“Clear First”);<br />
		JButton second=new JButton(“Clear Second”);<br />
		JButton result=new JButton(“Clear Third”);<br />
		JButton back=new JButton(“Use Result”);<br />
 		String temp=new String();<br />
		String var=new String();<br />
		GUIDisplayApplet jda=null;<br />
		public GUI(GUIDisplayApplet jda){<br />
			super(“Drag Image Here”,true,true,true,true);<br />
			try{<br />
				fix=new FinalImageCanvas(“null”,jda);<br />
			}catch(Exception e){}<br />
			imgOne=new MyImageCanvas(“”,jda);<br />
			imgTwo=new MyImageCanvas(“”,jda);<br />
			JPanel pane=new JPanel();<br />
			this.jda=jda;<br />
			pane.setLayout(new BorderLayout());</p>
<p>pane.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
			inner=new JPanel();<br />
			inner.setLayout(new GridLayout(0,1));</p>
<p>inner.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
			imgOne.setBackground(Color.white);<br />
			imgTwo.setBackground(Color.white);</p>
<p>imgOne.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow))<br />
;</p>
<p>imgTwo.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow))<br />
;</p>
<p>fix.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
			imgOne.setPreferredSize(new Dimension(400,300));<br />
			imgTwo.setPreferredSize(new Dimension(400,300));<br />
			Font f2=new Font(“Sarif”,Font.PLAIN,10);<br />
			first.setFont(f2);<br />
			second.setFont(f2);<br />
			result.setFont(f2);<br />
			back.setFont(f2);<br />
			submit.setFont(f2);<br />
			fix.setPreferredSize(new Dimension(400,300));<br />
			fix.setBackground(Color.white);<br />
			inner.add(new JScrollPane(imgOne));<br />
			inner.add(new JScrollPane(imgTwo));<br />
			inner.add(new JScrollPane(fix));<br />
			pane.add(“Center”,inner);<br />
			JPanel bottom=new JPanel();<br />
			bottom.setLayout(new FlowLayout(FlowLayout.CENTER));</p>
<p>bottom.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow))<br />
;<br />
			bottom.add(submit);<br />
			bottom.add(first);<br />
			bottom.add(second);<br />
			bottom.add(result);<br />
			bottom.add(back);<br />
			submit.addActionListener(this);<br />
			first.addActionListener(this);<br />
			second.addActionListener(this);<br />
			result.addActionListener(this);<br />
			back.addActionListener(this);<br />
			pane.add(“South”,bottom);<br />
			setContentPane(pane);<br />
			Dimension d=Toolkit.getDefaultToolkit().getScreenSize();<br />
			int height=(int)d.getHeight();<br />
			int width=(int)d.getWidth();<br />
			setLocation(0,5);<br />
			setSize((width*3/5)-10,height-70);<br />
			setVisible(true);<br />
		}<br />
		public void actionPerformed(ActionEvent ae){</p>
<p>			Object src=ae.getSource();<br />
			String s1=””;<br />
			String s2=””;<br />
			if(src==submit){<br />
				try{<br />
					s1=imgOne.getImage();<br />
					s2=imgTwo.getImage();<br />
					if(s1.equals(“.gif”)&& s2.equals(“.gif”)){<br />
							temp=”.gif”;<br />
							GUI.fix.setImage(temp);<br />
							var=”done”;<br />
					}<br />
					else if(s1.equals(“.gif”)&& !(s2.equals(“.gif”))){<br />
						temp=s2;<br />
						GUI.fix.setImage(temp);<br />
						var=”done”;<br />
					}<br />
					else if(s2.equals(“.gif”)&& !(s1.equals(“.gif”))){<br />
						temp=s1;<br />
						GUI.fix.setImage(temp);<br />
						var=”done”;<br />
					}<br />
					else{<br />
						String f1=null;<br />
						String f2=null;<br />
						StringTokenizer st=new StringTokenizer(s1,”.gif”);<br />
						if(st.hasMoreTokens())<br />
							f1=st.nextToken();<br />
						st=new StringTokenizer(s2,”.gif”);<br />
						if(st.hasMoreTokens())<br />
							f2=st.nextToken();<br />
						if(f1.equals(“1”)||f2.equals(“1”)){<br />
							String<br />
te=Integer.toString(Integer.parseInt(f1)+Integer.parseInt(f2));<br />
							String se=null;<br />
							se=Check.check(te);<br />
							if(se.equals(“.gif”)){<br />
								JOptionPane.showMessageDialog(null,”Sorry No Result to<br />
Display”);<br />
							}<br />
							temp=se+”.gif”;<br />
							Result r=null;<br />
							if(!(se.equals(“.gif”)))<br />
								r=new Result(temp,jda);<br />
							GUI.fix.setImage(temp);<br />
							var=”done”;<br />
						}<br />
						else{<br />
							JOptionPane.showMessageDialog(null,”Sorry No Result to<br />
Display”);<br />
							GUI.fix.setImage(“.gif”);<br />
							var=”done”;<br />
						}<br />
					}<br />
				}<br />
				catch(Exception e){<br />
				//	System.out.println(“What is the error”+e);<br />
				}<br />
			}<br />
			else if(src==back){<br />
				if(var.equals(“”)){<br />
					JOptionPane.showMessageDialog(null,”Please Press Submit Button to<br />
know Result First”);<br />
				}<br />
				else{<br />
					MyImageCanvas.flag=true;<br />
					imgOne.setImage(temp);<br />
					MyImageCanvas.flag=true;<br />
					imgTwo.setImage(“.gif”);<br />
					GUI.fix.setImage(“.gif”);<br />
				}<br />
			}<br />
			else if(src==first){<br />
				MyImageCanvas.flag=true;<br />
				imgOne.setImage(“.gif”);<br />
			}<br />
			else if(src==second){<br />
				MyImageCanvas.flag=true;<br />
				imgTwo.setImage(“.gif”);</p>
<p>			}<br />
			else if(src==result){<br />
				GUI.fix.setImage(“.gif”);<br />
				temp=”.gif”;<br />
				var=””;<br />
			}<br />
		}</p>
<p>}</p>
<p>///////////////End of GUI.java///////////////////////////////////////</p>
<p>/*<br />
 * @(#)GUIDisplay.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import javax.swing.*;<br />
import java.awt.*;<br />
import java.awt.event.*;</p>
<p>/**<br />
* This is the Main frame to show the GUI of this<br />
* application.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class GUIDisplay extends JFrame implements ActionListener{</p>
<p>	JMenuBar mbar=new JMenuBar();<br />
	JMenu help=new JMenu(“Help”);<br />
	JMenuItem h1=new JMenuItem(“How To”);<br />
	GUI gui=null;<br />
	MolContainer mcon=null;<br />
	static GUIDisplayApplet jda=null;<br />
	public GUIDisplay(GUIDisplayApplet jda){<br />
		super(“Strcture Viewer”);<br />
		setJMenuBar(mbar);<br />
		help.add(h1);<br />
		mbar.add(help);<br />
		h1.addActionListener(this);<br />
		gui=new GUI(jda);<br />
		this.jda=jda;<br />
		mcon=new MolContainer(jda);<br />
		JDesktopPane dp=new JDesktopPane();<br />
		dp.setBackground(new Color(255,220,255));<br />
		dp.add(gui);<br />
		dp.add(mcon);<br />
		setContentPane(dp);<br />
		setSize(Toolkit.getDefaultToolkit().getScreenSize());<br />
		setVisible(true);</p>
<p>	}<br />
	public static void main(String[] arg){<br />
		new GUIDisplay(GUIDisplay.jda);<br />
	}<br />
	public void actionPerformed(ActionEvent ec){<br />
		Help h=null;<br />
		try{<br />
			h.setVisible(false);<br />
		}<br />
		catch(Exception e){}<br />
		h=new Help();<br />
	}<br />
}<br />
////////////////////End of GUIDisplay.java///////////////////////////</p>
<p>/*<br />
 * @(#)GUIDisplayApplet.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gpta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import javax.swing.*;<br />
import java.awt.*;<br />
import java.applet.*;<br />
import java.net.*;<br />
import java.awt.event.*;</p>
<p>/**<br />
* This is the main Applet to show the ediotor of<br />
* molecules.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class GUIDisplayApplet extends JApplet{<br />
      public static URL url=null;<br />
	Thread t=null;<br />
	GUI gui=null;<br />
	static GUIDisplayApplet gda;<br />
	MolContainer mcon=null;<br />
	public static GUIDisplayApplet getMe(){<br />
		return new GUIDisplayApplet();<br />
	}<br />
	public GUIDisplayApplet(){<br />
	}<br />
	public void init(){<br />
		setBackground(new Color(255,120,255));<br />
		t=new Thread(){<br />
			public void run(){<br />
				while(true){<br />
					showStatus(“Structure Display Applet : Developed By Super InfoSoft<br />
Pvt. Ltd.”);<br />
					try{<br />
						Thread.sleep(5000);<br />
					}catch(Exception e){}<br />
				}<br />
			}<br />
		};<br />
		t.start();<br />
		try{<br />
			gui=new GUI(gda=GUIDisplayApplet.getMe());<br />
			new MolContainer(gda=GUIDisplayApplet.getMe());<br />
			url=getCodeBase();<br />
//			System.out.println(“URL========>”+url.toString());<br />
		}catch(Exception e){}<br />
		JFrame.setDefaultLookAndFeelDecorated(true);<br />
		final GUIDisplay gui=new GUIDisplay(gda);<br />
		gui.addWindowListener(<br />
			new WindowAdapter()<br />
			{<br />
				public void windowClosed(WindowEvent we)<br />
				{<br />
					gui.dispose();<br />
				}<br />
			});</p>
<p>	}<br />
	public void start(){<br />
		showStatus(“Structure Display Applet Started”);<br />
	}<br />
	public void stop(){<br />
		System.out.println(“Shutting Down”);<br />
		showStatus(“Structure Display Applet Shutdown”);<br />
		super.stop();<br />
		if(t.isAlive())<br />
			t.suspend();<br />
		t.stop();<br />
	}</p>
<p>}<br />
////////////////End of GUIDisplayApplet.java///////////////////////////</p>
<p>/*<br />
 * @(#)Help.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import javax.swing.*;<br />
import java.awt.*;<br />
import java.awt.event.*;</p>
<p>/**<br />
* This class is to show the gui<br />
* for help .<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class Help extends JFrame implements ActionListener{<br />
	  JLabel consLabel;<br />
	  JButton ok=new JButton(“OK”);<br />
        public Help(){<br />
                super(“***Help***”);<br />
		    consLabel=new JLabel(“<html><font color=blue><I>Drag Image on<br />
Editor<br />
Above and Below<br><br>and Press submit Button to know the<br />
result.<br><br><br />
To Use the result again in editor Press Use Result<br />
Button</font>”,JLabel.CENTER);</p>
<p>consLabel.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.green<br />
));<br />
		    getContentPane().add(consLabel,BorderLayout.CENTER);<br />
  		    getContentPane().add(ok,BorderLayout.SOUTH);<br />
                ok.addActionListener(this);<br />
                    setSize(350,300);<br />
		    setLocation(10,10);<br />
		    setVisible(true);<br />
       }<br />
	 public void actionPerformed(ActionEvent ec ){<br />
		setVisible(false);<br />
	 }<br />
}<br />
/////////////////////End of Help.java/////////////////////////////////</p>
<p>/*<br />
 * @(#)ImageCanvas.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import java.awt.*;<br />
import java.awt.event.*;<br />
import java.awt.image.*;<br />
import javax.swing.*;<br />
import java.net.*;</p>
<p>/**<br />
* This class is to show the molecules in the<br />
* dragable editor .<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class ImageCanvas extends JPanel implements<br />
MouseListener,MouseMotionListener<br />
{</p>
<p>	Image image;<br />
	public static String imagename=””;<br />
	public static boolean dragknow=false;<br />
	GUIDisplayApplet jp=null;<br />
      String name=””;<br />
	public ImageCanvas(String name,GUIDisplayApplet jp) {<br />
                this.name=name;<br />
			this.jp=jp;<br />
		    MediaTracker media = new MediaTracker(this);<br />
//			System.out.println(“JP===>”+jp.url+”———-name–“+name);<br />
		    try{<br />
                		image = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
			}catch(Exception e1){<br />
				//System.out.println(“Error here=====>”+e1);<br />
			}<br />
                media.addImage(image, 0);<br />
                try {<br />
                         media.waitForID(0);<br />
                } catch (Exception e) {}<br />
		addMouseListener(this);<br />
		addMouseMotionListener(this);<br />
        }<br />
	 public ImageCanvas(ImageProducer imageProducer) {<br />
	 image = createImage(imageProducer);<br />
	}<br />
	 public void paint(Graphics g) {<br />
	//System.out.println(“Image===<“+image);<br />
	 if(image!=null)<br />
	 	g.drawImage(image, 0,0, this);<br />
	}<br />
	public void setImage(String name){<br />
			try{<br />
		    		image = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));</p>
<p>			}catch(Exception e){}<br />
			repaint();<br />
	}<br />
	 public void mousePressed(MouseEvent evt) {</p>
<p>		}<br />
          public void mouseEntered(MouseEvent evt) {}<br />
          public void mouseExited(MouseEvent evt) { }<br />
          public void mouseClicked(MouseEvent evt) { }<br />
          public void mouseReleased(MouseEvent evt) { }<br />
          public void mouseDragged(MouseEvent evt)<br />
	    {<br />
			dragknow=false;<br />
			imagename=name;<br />
	    }<br />
          public void mouseMoved(MouseEvent evt){}<br />
}<br />
//////////////////////End of ImageCanvas.java/////////////////////////</p>
<p>/*<br />
 * @(#)MolContainer.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import java.awt.*;<br />
import javax.swing.*;</p>
<p>/**<br />
* This is the class to hold all the molecules<br />
* in an editor.<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class MolContainer extends JInternalFrame {</p>
<p>	ImageCanvas b[]=null;<br />
	public MolContainer(GUIDisplayApplet jda){<br />
		super(“Drag Image From Here”,true,true,true,true);<br />
		JPanel p=new JPanel();<br />
		b=new ImageCanvas[25];<br />
		p.setLayout(new GridLayout(0,2));</p>
<p>p.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
		JScrollPane jsp=new JScrollPane(p,<br />
		ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,<br />
		ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS<br />
		);<br />
		for(int i=0,j=1,n=1;i<b.length;i++,j++){<br />
			if(j==2*n+1){<br />
				n++;<br />
				continue;<br />
			}<br />
			b[i]=new ImageCanvas(Integer.toString(i+1)+”.gif”,jda);</p>
<p>b[i].setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
			b[i].setPreferredSize(new Dimension(150,150));<br />
			if(i!=21)<br />
			p.add(b[i]);<br />
		}<br />
		p.setBackground(Color.white);<br />
		getContentPane().add(jsp);<br />
		Dimension d=Toolkit.getDefaultToolkit().getScreenSize();<br />
		int height=(int)d.getHeight();<br />
		int width=(int)d.getWidth();<br />
            setSize((width*2/5)-20,height-70);<br />
            setLocation((width*3/5)+10,5);<br />
            setVisible(true);<br />
	}</p>
<p>}</p>
<p>/////////////////////////End of MolContainer.java//////////////////////</p>
<p>/*<br />
 * @(#)MyImageCanvas.java	 20/06/05<br />
 *<br />
 * Copyright 2005 Sunil Kumar Gupta. All rights reserved.<br />
 * Super InfoSoft PROPRIETARY/CONFIDENTIAL. Use is subject to license<br />
terms.<br />
 */</p>
<p>import java.awt.*;<br />
import java.awt.event.*;<br />
import java.awt.image.*;<br />
import javax.swing.*;<br />
import java.net.*;</p>
<p>/**<br />
* This class is to show the molecules when drag<br />
* from another editor .<br />
* @author Sunil Kumar Gupta<br />
*/</p>
<p>public class MyImageCanvas extends JPanel implements MouseListener{</p>
<p>	boolean dragFlag=false;<br />
	int x=0,y=0;<br />
	Image image;<br />
      public String name=””;<br />
	GUIDisplayApplet jp=null;<br />
	public static boolean flag=false;<br />
	public MyImageCanvas(){}<br />
	public MyImageCanvas(String name,GUIDisplayApplet jp) {<br />
                this.name=name;<br />
			this.jp=jp;<br />
		    MediaTracker media = new MediaTracker(this);<br />
		   try{<br />
                		image = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
		    }catch(Exception e1){}<br />
                media.addImage(image, 0);<br />
                try {<br />
                         media.waitForID(0);<br />
                } catch (Exception e) {}<br />
			addMouseListener(this);<br />
		  }<br />
	 public MyImageCanvas(ImageProducer imageProducer) {<br />
	 image = createImage(imageProducer);<br />
	}<br />
	 public void paintComponent(Graphics g) {<br />
		super.paintComponent(g);<br />
		g.setColor(Color.red);<br />
		g.setFont(new Font(“Dialog”,Font.BOLD,11));<br />
		g.drawString(“Put Image Here”,3,15);<br />
	 	try{<br />
	 		if(image!=null)<br />
	 			g.drawImage(image, 100,5, this);</p>
<p>		}catch(Exception e){}</p>
<p>	}<br />
	public void setImage(String name){</p>
<p>		try{<br />
		    	image = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
		    	this.name=name;<br />
		}<br />
		catch(Exception e){<br />
//			System.out.println(“Error+||||||”+e);<br />
		}<br />
		if(flag==true){<br />
			repaint();<br />
			name=”.gif”;<br />
			flag=false;<br />
		}<br />
	}<br />
	public void update(Graphics g){<br />
		paint(g);<br />
	}<br />
	public String getImage(){<br />
	return name;<br />
	}<br />
	    public void mousePressed(MouseEvent evt){<br />
	    }<br />
          public void mouseEntered(MouseEvent evt){</p>
<p>		try{<br />
			if(ImageCanvas.dragknow==false){<br />
				setImage(ImageCanvas.imagename);<br />
				ImageCanvas.dragknow=true;<br />
				repaint();<br />
				ImageCanvas.dragknow=true;<br />
			}<br />
		}catch(Exception e){}<br />
	    }<br />
          public void mouseExited(MouseEvent evt){}<br />
          public void mouseClicked(MouseEvent evt){<br />
	    }<br />
          public void mouseReleased(MouseEvent evt){<br />
	    }<br />
          public void mouseDragged(MouseEvent evt){<br />
	    }<br />
          public void mouseMoved(MouseEvent evt){}</p>
<p>}<br />
//////////////////////////End of MyImageCanvas.java///////////////////</p>
<p>import javax.swing.*;<br />
import java.awt.event.*;<br />
import java.awt.*;<br />
import java.net.*;</p>
<p>public class Result extends JFrame implements ActionListener {<br />
	  GUIDisplayApplet jp=null;<br />
	  JButton ok=new JButton(“OK”);<br />
	   ResultCanvas rc=null;<br />
        public Result(String name,GUIDisplayApplet jp){<br />
                super(“Result”);<br />
			this.jp=jp;<br />
			JPanel p=new JPanel();<br />
			p.setLayout(new FlowLayout(FlowLayout.CENTER));</p>
<p>p.setBorder(BorderFactory.createEtchedBorder(Color.red,Color.yellow));<br />
			ok.addActionListener(this);<br />
			p.add(ok);<br />
			rc=new ResultCanvas(jp,name);<br />
                getContentPane().add(rc,BorderLayout.CENTER);<br />
		    getContentPane().add(p,BorderLayout.SOUTH);<br />
                setSize(300,300);<br />
                setLocation(200,100);<br />
                setVisible(true);<br />
        }<br />
	  public void actionPerformed(ActionEvent ed){<br />
		setVisible(false);<br />
	  }<br />
}</p>
<p>class ResultCanvas extends Canvas{<br />
	GUIDisplayApplet jp=null;<br />
	Image img=null;<br />
	ResultCanvas(GUIDisplayApplet jp,String name){<br />
		setBackground(Color.white);<br />
		this.jp=jp;<br />
		MediaTracker media = new MediaTracker(this);<br />
		    try{<br />
                		img=Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));</p>
<p>img=img.getScaledInstance(this.getWidth(),this.getHeight(),2);<br />
                }<br />
		    catch(Exception e1){<br />
		    }<br />
                media.addImage(img, 0);<br />
                try {<br />
                         media.waitForID(0);<br />
                }<br />
		    catch (Exception e) {}<br />
	}<br />
	public void paint(Graphics g){<br />
		if(img!=null){<br />
	   		g.drawImage(img,10,10,this);<br />
		}<br />
	}<br />
	public void setImage(String name){<br />
			try{<br />
		    		img = Toolkit.getDefaultToolkit().getImage(new<br />
URL(jp.url+name));<br />
			}catch(Exception e){}<br />
			repaint();<br />
	}<br />
}<br />
///////////////////End of Result.java//////////////////////////////////</p>
<p>########################Start.html###################################</p>
<p><html><br />
<head><title>Intelligent editor for chemical</title><br />
<body text=yellow bgcolor=#fffffg><br />
<form action=”Editor.html”><br />
<table border=4 bgcolor=red width=100% height=20><br />
<tr><td align=center><br />
<b><h2> Intelligent Editor for Chemical Reactions<br />
</td></tr><br />
</table><br />
<applet code=”GUIDisplayApplet” width=0 height=0><br />
</applet><br />
<br><br><br><br><br><br><br><br />
<center><br />
<table border=4 bgcolor=red width=5% height=20><tr><td align=center><br />
<input type=submit name=”click” color=yellow value=”Back”><br />
</td></tr></table><br />
<br><br><br><br><br><br><br><br />
<table border=4 bgcolor=red width=100% height=20><br />
<tr><br />
<td align=center><br />
	<b><font color=green><marquee>Copyright ©: Sunil Kumar<br />
Gupta )</marquee></font><br />
</td><br />
<tr><br />
</table><br />
</body><br />
