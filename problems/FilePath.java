import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
public class FilePath {
	public static void main(String[] args) throws IOException{

            // create object of Path
            Path path = Paths.get("D:/workspace/jhvgb/mxbahb/AmanCV.txt");

            // call getFileName() and get FileName path object
            Path fileName = path.getFileName();

            // print FileName
            System.out.println("FileName: "+ fileName.toString());
        }
        
}