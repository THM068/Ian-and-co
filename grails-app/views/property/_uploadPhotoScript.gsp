<script type="text/javascript">
    $(function() {
        $('#uploadButton').click(function(){
            uploadPhoto(this);
            return false;
        });

        $( "#photoResults" ).sortable({
                stop:function(event, ui) {
                    $.ajax({
                        type: "GET",
                        url: "/property/sortPhotos",
                        data: $("#photoResults").sortable("serialize")
                    });
                }
            });
	        $( "#photoResults" ).disableSelection();
        });

    function uploadPhoto(li) {

        var form = $(li).parents('form');
        var url = form.attr('action');
        var params = form.serialize();

        $.ajax({
            cache: false,
            type: 'POST',
            url: url,
            data: params,
            dataType: 'json',
            success : function(data) {
                if(data.success) {
                    $('#fileNameField').val('');
                    var uploadPhotoList = $('#photoResults');
                    uploadPhotoList.empty();
                    $.each(data.photos, function(i, val) {
                        var image = '<li id="'+ val.id +'"><img src="' + val.fileName + '" width="200" height="200"/></li>';
                        uploadPhotoList.append(image);
                    });

                }
                else if(data.errorMessage) {
                    $('#errors').empty();
                    $('#errors').append(data.errorMessage);


                }
            }
        });
    }

</script>