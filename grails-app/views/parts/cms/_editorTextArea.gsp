<script>
    $(document).ready(function() {
        // rich text editor
        $.cleditor.defaultOptions.controls = "bold italic underline | removeformat | bullets numbering | outdent indent | undo redo | rule link unlink | cut copy paste pastetext | source";
        $("textarea").cleditor({
            width:"500px", margin:"0 170px 0 0"
        });
    });
</script>