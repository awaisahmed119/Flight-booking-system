import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import mypackage.FlightServiceLocator;
import mypackage.Flight_PortType;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.swing.text.Document;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.io.StringReader;
import java.util.Scanner;

public class HellowWorldCLient {
    public static void main(String[] argv) {
		
        try {
            FlightServiceLocator locator = new FlightServiceLocator();
            Flight_PortType service = locator.getFlight();
            System.out.println("pls enter origin and destination");
                       Scanner scanner = new Scanner(System. in); String input = scanner. nextLine();

            String response = service.getPrice(input,"");
          //

               org.jdom.input.SAXBuilder saxBuilder = new SAXBuilder();
                org.jdom.Document doc = saxBuilder.build(new StringReader(response));
                String message = doc.getRootElement().getText();
                System.out.println(message);
//

            System.out.println("enter flight number and date");
              scanner = new Scanner(System. in);   input = scanner. nextLine();
              response = service.getSeats(input,"");
             saxBuilder = new SAXBuilder();
             doc = saxBuilder.build(new StringReader(response));
            message = doc.getRootElement().getText();
            System.out.println(message);




        }

        catch (javax.xml.rpc.ServiceException ex) {
            ex.printStackTrace();
        } catch (java.rmi.RemoteException ex) {
            ex.printStackTrace();

        }
       catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }



    }

}
