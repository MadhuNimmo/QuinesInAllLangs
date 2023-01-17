package Java;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Optional;

public class PrintMe {

    private static final String JAVA_FILE_NAME = PrintMe.class.getSimpleName() + ".java";

    public static void main(String[] args) throws IOException {
        File current = new File(".");
        Optional<File> searchedFile = search(current);

        if(searchedFile.isPresent()) {
            System.out.println(new String(Files.readAllBytes(searchedFile.get().toPath()), StandardCharsets.UTF_8));
        }
    }

    private static Optional<File> search(File dir) {
        File[] files = dir.listFiles();

        for(File file : files) {
            if(file.isDirectory()) {
                Optional<File> f = search(file);
                if(f.isPresent()) return f;
            } else if (file.getName().equals(JAVA_FILE_NAME)){
                return Optional.of(file);
            }
        }
        return Optional.empty();
    }
}
