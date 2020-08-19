import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import java.awt.*;



public class strtActivity extends JFrame {

    private String sss="Loading.";
    private JFrame preloaderFrame;
    private Container preloaderContainer;
    private GridBagLayout preloaderLayout;
    private GridBagConstraints preloaderConstraints;
    private JLabel picJLabel = new JLabel();
    public static JLabel statusJLabel = new JLabel();
    private int picWidth,  picHeight,  x,  y;
    private static strtActivity frm;
    private JLayeredPane layeredPane = new JLayeredPane();
    private Color fontcolororg = new Color(255, 197, 110, 255);
    private Color fontcolorgray = new Color(124, 121, 118, 255);

    public strtActivity() {

        preloaderFrame = new JFrame("DataBase Project");
        preloaderFrame.setUndecorated(true);
        preloaderFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        preloaderLayout = new GridBagLayout();
        preloaderConstraints = new GridBagConstraints();
        preloaderContainer = getContentPane();
        preloaderContainer.setLayout(preloaderLayout);
        
        layeredPane.setPreferredSize(new Dimension(435, 262));

        Icon bug = new ImageIcon(getClass().getResource("/Data/preloader.png"), "Loading...");
        picJLabel = new JLabel(bug);
        Font picJLabelfont = new java.awt.Font("Arial", 1, 18);

        picJLabel.setVerticalAlignment(JLabel.TOP);
        picJLabel.setHorizontalAlignment(JLabel.LEFT);
        //picJLabel.setBackground(Color.black);
        //picJLabel.setForeground(fontcolororg);
        //picJLabel.setBorder(BorderFactory.createLineBorder(Color.black));
        picJLabel.setBounds(0, 0, 435, 262); //X=232
        picJLabel.setFont(picJLabelfont);
        layeredPane.add(picJLabel, new Integer(1));

        statusJLabel = new JLabel("Loading..");
        Font statusJLabelfont = new java.awt.Font("Arial", Font.BOLD, 18);

        statusJLabel.setVerticalAlignment(JLabel.TOP);
        statusJLabel.setHorizontalAlignment(JLabel.LEFT);
        statusJLabel.setBackground(Color.black);
        statusJLabel.setForeground(Color.white);//(fontcolorgray);
        //statusJLabel.setBorder(BorderFactory.createLineBorder(Color.black));
        statusJLabel.setBounds(190, 225, 200, 40); //X=232
        statusJLabel.setFont(picJLabelfont);
        layeredPane.add(statusJLabel, new Integer(2));
        
        addComponent(layeredPane, 0, 0, 1, 1, 0, 0, GridBagConstraints.NONE);
        preloaderFrame.add(preloaderContainer);


        picHeight = bug.getIconHeight();
        picWidth = bug.getIconWidth();

        Toolkit k = this.getToolkit();
        Dimension dim = k.getScreenSize();
        x = (int) (dim.width / 2) - (int) (picWidth / 2);
        y = (int) (dim.height / 2) - (int) (picHeight / 2);
        preloaderFrame.setBounds(x, y, picWidth, picHeight);
        preloaderFrame.setVisible(true);

    }
    
    public void statusUpdate( ){
        sss +=".";
        //System.out.println("slsl");
        statusJLabel.setText(sss);
    }

    public void loading()
    {
        Thread t = new Thread();
        t.start();

         for(int i=0;i<20;i++)
        {
            this.statusUpdate( );

            try {
                t.sleep(100);
            } catch (InterruptedException ex) {
                Logger.getLogger(strtActivity.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        if (t.isAlive() == false) {
            try {
                preloaderFrame.dispose();
               
            } catch (Exception ex) {
                Logger.getLogger(strtActivity.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    private void addComponent(Component component,   int row, int column, int width, int height, int weightx, int weighty, int fill)
    {
        preloaderConstraints.fill = fill;
        preloaderConstraints.gridx = column;
        preloaderConstraints.gridy = row;

        preloaderConstraints.gridwidth = width;
        preloaderConstraints.gridheight = height;

        preloaderConstraints.weightx = weightx;
        preloaderConstraints.weighty = weighty;

        preloaderConstraints.weightx = weightx;
        preloaderConstraints.weighty = weighty;
        // set mLoginConstraints and add component
        preloaderLayout.setConstraints(component, preloaderConstraints);
        preloaderContainer.add(component);
    }
    
    public static void main(String[] args)
    {
         strtActivity preloaderFrame= new strtActivity();

        preloaderFrame.loading();

         try {

                for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                    /*if ("Nimbus".equals(info.getName())) {
                        javax.swing.UIManager.setLookAndFeel(info.getClassName());
                        break;
                    }*/
                    UIManager.setLookAndFeel("com.jtattoo.plaf.smart.SmartLookAndFeel");
                    UIManager.setLookAndFeel("com.jtattoo.plaf.acryl.AcrylLookAndFeel");
                    UIManager.setLookAndFeel("com.jtattoo.plaf.aero.AeroLookAndFeel");
                }
            } catch (ClassNotFoundException ex) {
                java.util.logging.Logger.getLogger(StockEntry.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                java.util.logging.Logger.getLogger(StockEntry.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                java.util.logging.Logger.getLogger(StockEntry.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            } catch (javax.swing.UnsupportedLookAndFeelException ex) {
                java.util.logging.Logger.getLogger(StockEntry.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        
        new Login_Frame().setVisible(true);
  
    }
}

