import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.awt.event.MouseEvent;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.MouseListener;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.JTextField;


public class Login_Image extends JPanel implements MouseListener
{
    static JTextField name,pass;
    static JPanel panel;
    static JFrame myFrame;

    public Login_Image()
    {
        setOpaque(false);

        setLayout(null);

        this.addMouseListener(this);
    }


    public static void main(String[]args)
    {
        myFrame=new JFrame("OS Lab");

        Login_Image c=new Login_Image();

        name=new JTextField();
        name.setBounds(280,190, 110, 15);
        name.setHighlighter(null);
        c.add(name);

        pass=new JTextField();
        pass.setBounds(280,223, 110, 15);
        c.add(pass);

        myFrame.add(c);
        myFrame.setResizable(false);
       // myFrame.setLocationRelativeTo(null);
        myFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        myFrame.setSize(645,440);
        myFrame.setVisible(true);
        myFrame.repaint();
    }

    @Override
    public void paint(Graphics g)
    {
        Image b=Toolkit.getDefaultToolkit().getImage("images/bc.jpg");
        g.drawImage(b,0,0,820,700,this);

        Image a=Toolkit.getDefaultToolkit().getImage("images/login.png");
        g.drawImage(a,0,0,570+75,390+50,this);
        super.paint(g);
    }


    @Override
    public void mouseClicked(MouseEvent e) {

        int x=e.getX(),y=e.getY();

        System.out.println(x+"  "+y);

        if ( (x-432)*(x-432) + (y-211)*(y-211) <  17*17)
        {

            DataBase_connect  obj=new DataBase_connect();

            ResultSet rs=null;

            PreparedStatement pst=null;

            Connection conn=obj.Open();

            String sql="select * from login_table where username=? and password=?";
            try{
                pst=(PreparedStatement) conn.prepareStatement(sql);
                pst.setString(1, name.getText());
                pst.setString(2, pass.getText());
                rs=pst.executeQuery();
                if(rs.next()){

                    rs.close();
                    pst.close();

                    myFrame.dispose();

                    HomePage pg=new HomePage();
                    pg.setVisible(true);
                }
                else{
                    JOptionPane.showMessageDialog(null, "Username and Password is incorrect");
                }

            }catch(Exception ex){
                JOptionPane.showMessageDialog(null, e);
            }
            
            
        }
    }

    @Override
    public void mousePressed(MouseEvent e) {

    }

    @Override
    public void mouseReleased(MouseEvent e) {

    }

    @Override
    public void mouseEntered(MouseEvent e) {

    }

    @Override
    public void mouseExited(MouseEvent e) {

    }

}
