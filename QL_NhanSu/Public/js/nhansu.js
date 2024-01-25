function previewImage() {
    var fileInput = document.querySelector('input[type="file"]');
    var preview = document.getElementById('preview');

    var file = fileInput.files[0];
    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
    }

    if (file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = "noprofil.jpg";
    }
};
