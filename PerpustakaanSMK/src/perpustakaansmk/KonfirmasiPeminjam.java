/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perpustakaansmk;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author Atthoriq
 */
public class KonfirmasiPeminjam extends javax.swing.JFrame {
    public ResultSet rst;
    Connection CC = new koneksi().connect();
    public Statement stt;
    public DefaultTableModel tmdl;
    public PreparedStatement prst;
    /**
     * Creates new form KonfirmasiPeminjam1
     */
    String id;
    String noanggota;
    String namaanggota;
    String idbuku;
    String judulbuku;
    String tanggalpinjam;
    public KonfirmasiPeminjam() {
        initComponents();
        
        judul();
        Datas("");
        jButton1.setEnabled(false);
    }
    public void judul() {
            Object[] judul = {
        "id","No Anggota","Nama Peminjam","Id Buku", "Judul Buku", "Tanggal Pinjam"
        };
        tmdl = new DefaultTableModel(null, judul);
        konfirpinjam.setModel(tmdl);}
    
    public void Datas(String where) {
        try {
            stt = CC.createStatement();
            tmdl.getDataVector().removeAllElements();
            tmdl.fireTableDataChanged();
            rst = stt.executeQuery("SELECT * FROM peminjam where status = 1 ");
            
            while(rst.next()){
            Object[] data = {
                rst.getString("id"),
                rst.getString("noanggota"),
                rst.getString("Nama"),
                rst.getString("idbuku"),
                rst.getString("judulbuku"),
                rst.getString("tanggalpinjam")
                
                
            };
            tmdl.addRow(data);
            }
            }catch(Exception e){
          e.printStackTrace();
        }
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        tenggat = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        konfirpinjam = new javax.swing.JTable();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        tkembali = new javax.swing.JTextField();
        pustakawan = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Konfirmasi Peminjaman");

        tenggat.setBackground(new java.awt.Color(199, 234, 238));

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("KONFIRMASI PEMINJAMAN");

        konfirpinjam.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "id", "noanggota", "Nama Peminjam", "idbuku", "Judul Buku", "Tanggal Pinjam"
            }
        ));
        konfirpinjam.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                konfirpinjamMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(konfirpinjam);
        if (konfirpinjam.getColumnModel().getColumnCount() > 0) {
            konfirpinjam.getColumnModel().getColumn(1).setResizable(false);
        }

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("Tenggat Pengembalian");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel4.setText("Nama Pustakawan");

        tkembali.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        pustakawan.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        jButton1.setText("Konfrimasi");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Kembali");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout tenggatLayout = new javax.swing.GroupLayout(tenggat);
        tenggat.setLayout(tenggatLayout);
        tenggatLayout.setHorizontalGroup(
            tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(tenggatLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 572, Short.MAX_VALUE)
                    .addGroup(tenggatLayout.createSequentialGroup()
                        .addComponent(jLabel3)
                        .addGap(52, 52, 52)
                        .addComponent(tkembali))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, tenggatLayout.createSequentialGroup()
                        .addComponent(jButton2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton1))
                    .addGroup(tenggatLayout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(79, 79, 79)
                        .addGroup(tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(tenggatLayout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addComponent(pustakawan))))
                .addContainerGap())
        );
        tenggatLayout.setVerticalGroup(
            tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(tenggatLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 51, Short.MAX_VALUE)
                .addGroup(tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(pustakawan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tkembali, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(48, 48, 48)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(tenggatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2))
                .addGap(4, 4, 4))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(tenggat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tenggat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        petugas_menu a = new petugas_menu();
        a.setVisible(true);
        dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void konfirpinjamMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_konfirpinjamMouseClicked
       id = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 0).toString();
       noanggota = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 1).toString();
       namaanggota = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 2).toString();
       idbuku = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 3).toString();
       judulbuku = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 4).toString();
       tanggalpinjam = konfirpinjam.getValueAt(konfirpinjam.getSelectedRow(), 5).toString();
       jButton1.setEnabled(true);
    }//GEN-LAST:event_konfirpinjamMouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
         try{
             stt = CC.createStatement();
            stt.executeUpdate("INSERT INTO laporanpinjam VALUES('"+ id+ "','" 
                    + idbuku + "','"
                    + judulbuku + "','"
                    + noanggota + "','"
                    + namaanggota+ "','"
                    + tanggalpinjam + "','"
                    + pustakawan.getText()+ "')");
            stt = CC.createStatement();
            stt.executeUpdate("UPDATE peminjam set "
                   + "tenggatkembali='" + tkembali.getText() + "',"
                   + "petugaskonfirpinjam='" + pustakawan.getText() + "',"
                   + "status = '2', keterangan = 'Proses' WHERE peminjam.id = "+ id +  "" );
            Datas("");
            
            JOptionPane.showMessageDialog(null, "berhasil Dikonfirmasi");
            tkembali.setText("");
            pustakawan.setText("");
            jButton1.setEnabled(false);
        }catch(Exception e){
            e.printStackTrace();
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(KonfirmasiPeminjam.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KonfirmasiPeminjam.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KonfirmasiPeminjam.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KonfirmasiPeminjam.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KonfirmasiPeminjam().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable konfirpinjam;
    private javax.swing.JTextField pustakawan;
    private javax.swing.JPanel tenggat;
    private javax.swing.JTextField tkembali;
    // End of variables declaration//GEN-END:variables
}