<!DOCTYPE html>
<html>
<h1><center> Maniker file upload</center></h1>
    <head>
        <meta charset="UTF-8">
        <title>Uploading Files Example with Spring Boot, Freemarker</title>
    </head>

    <body onload="updateSize();">
        <form name="uploadingForm" enctype="multipart/form-data" action="/" method="POST">
            <p>
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                <h2> Meta Data </h2>
                selected files: <span id="fileNum">0</span>;
                total size: <span id="fileSize">0</span>
            </p>
            <p>
                <input type="submit" value="Upload files">
            </p>
        </form>
        <div>
            <div><h3>Previously Uploaded FIles:</h3></div>
            <#list files as file>
            <div>
            ${file.getName()}
            </div>
            </#list>
        </div>
        <script>
            function updateSize() {
                var nBytes = 0,
                        oFiles = document.getElementById("fileInput").files,
                        nFiles = oFiles.length;
                for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                    nBytes += oFiles[nFileId].size;
                }

                var sOutput = nBytes + " bytes";

                document.getElementById("fileNum").innerHTML = nFiles;
                document.getElementById("fileSize").innerHTML = sOutput;
            }
        </script>
    </body>
</html>