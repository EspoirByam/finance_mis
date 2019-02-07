
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfDocument;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPage;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Espoir SB
 */
@WebServlet(urlPatterns = {"/income_statement"})
public class income_statement extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        
        try  {
            /* TODO output your page here. You may use following sample code. */
          
            try{
                Document document = new Document();
                PdfWriter.getInstance(document, out);
                
                document.open();
                
                Image img = Image.getInstance("C:\\Users\\Six B\\Documents\\NetBeansProjects\\finance_mis\\web\\images\\report-logo.jpg");  
                img.scaleToFit(400f, 65f);
                img.setAlignment(Element.ALIGN_CENTER);                
                document.add(img);               
                
                Paragraph par1 = new Paragraph();
                Font title= new Font(Font.FontFamily.TIMES_ROMAN,14,Font.BOLD,BaseColor.BLACK);
                par1.add(new Phrase("INCOME STATEMENT",title));
                par1.setAlignment(Element.ALIGN_CENTER);
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                document.add(par1); 
              
                PdfPTable table = new PdfPTable(3);
                table.setWidthPercentage(75);
                table.getDefaultCell().setBorder(0);
                
                //setting table's column width
                float[] columnWidths = new float[]{50f, 10f, 10f};
                table.setWidths(columnWidths);
                
                               
               
                table.addCell(new Paragraph("Sales revenue", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("1", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));                
               
                table.addCell(new Paragraph("Cost of good sold", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("2", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));                
            
                table.addCell(new Paragraph("Other Income", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("3", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
           
      // ----- Horizontal line in a table ------
               PdfPCell underline = new PdfPCell(new Paragraph("----------------------------------------------------------------------------------------------------------------------------------------",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
               underline.setColspan(3);
               underline.setBorder(0);
               table.addCell(underline);               
       // ----- End of hr line ----------
                
                PdfPCell cell11 = new PdfPCell(new Paragraph("GROSS MARGIN",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
                PdfPCell cell12 = new PdfPCell(new Paragraph("",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));  
                PdfPCell cell13 = new PdfPCell(new Paragraph("0",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
               
                cell11.setBorder(0);
                cell12.setBorder(0);
                cell13.setBorder(0);
                table.addCell(cell11);
                table.addCell(cell12);
                table.addCell(cell13); 
                
       // ----- These 4 lines help to put a blank row in this table ------
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
       // ----- End of blank row ----------
                
                table.addCell(new Paragraph("Sales and marketing", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("4", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK))); 
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("Research & Development", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("5", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK))); 
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("Other expenses", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("6", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK))); 
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                
      // ----- Horizontal line in a table ------               
               table.addCell(underline);               
       // ----- End of hr line ----------
               
                PdfPCell cel1 = new PdfPCell(new Paragraph("OPERATING EXPENSIVES",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
                PdfPCell cel2 = new PdfPCell(new Paragraph("",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK))); 
                PdfPCell cel3 = new PdfPCell(new Paragraph("0",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
               
                cel1.setBorder(0);
                cel2.setBorder(0);
                cel3.setBorder(0);
                table.addCell(cel1);
                table.addCell(cel2);
                table.addCell(cel3); 
       
       // ----- These 4 lines help to put a blank row in this table ------
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
       // ----- End of blank row ----------
                
                PdfPCell cell4 = new PdfPCell(new Paragraph("INCOME FROM OPERATIONS",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
                PdfPCell cell5 = new PdfPCell(new Paragraph("",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK))); 
                PdfPCell cell7 = new PdfPCell(new Paragraph("0",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
               
                cell4.setBorder(0);
                cell5.setBorder(0);
                cell7.setBorder(0);
                table.addCell(cell4);
                table.addCell(cell5);
                table.addCell(cell7); 
    
       // ----- These 3 lines help to put a blank row in this table ------
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
       // ----- End of blank row ----------    
                
                table.addCell(new Paragraph("Interest income", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("7", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK))); 
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("Income tax", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("8", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK))); 
                table.addCell(new Paragraph("0", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                
       // ----- These 3 lines help to put a blank row in this table ------
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
                table.addCell(new Paragraph("\n", FontFactory.getFont("Aroma", 7, Font.NORMAL, BaseColor.BLACK)));
       // ----- End of blank row ---------- 
                
                PdfPCell cellT = new PdfPCell(new Paragraph("NET INCOME",FontFactory.getFont("Aroma", 8, Font.UNDERLINE, BaseColor.BLACK)));
                PdfPCell cellT1 = new PdfPCell(new Paragraph("",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK))); 
                PdfPCell cellT2 = new PdfPCell(new Paragraph("0",FontFactory.getFont("Aroma", 8, Font.BOLD, BaseColor.BLACK)));
               
                cellT.setBorder(0);
                cellT1.setBorder(0);
                cellT2.setBorder(0);
                table.addCell(cellT);
                table.addCell(cellT1);
                table.addCell(cellT2); 
                
                document.add(table);
                
                document.close();
            
            }catch(Exception ex){ex.getMessage();}
            
            
            
            
        } finally{
            
            out.close();
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
