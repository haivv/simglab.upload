var Size = Quill.import('attributors/style/size');
Size.whitelist = ['12px', '16px', '20px', '24px', '28px'];
Quill.register(Size, true);

var quill = new Quill('#editor', {
  theme: 'snow',
  placeholder: 'Type your content...',
  modules: {
    toolbar: [

      ['image']
    ],
    imageResize: {}
  }
});

function saveContent() {
  const slideshow_imgs = quill.root.innerHTML;
  let slideshow_title = document.getElementById('slideshow_title').value;
  let slideshow_summary = document.getElementById('slideshow_summary').value;


  let formData = new URLSearchParams();
  formData.append('slideshow_imgs', slideshow_imgs);
  formData.append('slideshow_title', slideshow_title);
  formData.append('slideshow_summary', slideshow_summary);
 
  // formData.append('txtfileupload', txtfileupload);

  fetch('/admin/slideshow-proAdd', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: formData
  })
    .then(window.location.href = '/admin/slide-show');
}

quill.getModule('toolbar').addHandler('image', () => {
  const input = document.createElement('input');
  input.setAttribute('type', 'file');
  input.setAttribute('accept', 'image/*');
  input.click();

  input.onchange = () => {
    const file = input.files[0];
    if (/^image\//.test(file.type)) {
      saveToServer(file).then((url) => {
        const range = quill.getSelection(true);
        quill.insertEmbed(range.index, 'image', url);
      });
    } else {
      console.warn('You can only upload images');
    }
  };
});

function saveToServer(file) {
  return new Promise((resolve, reject) => {
    const formData = new FormData();
    formData.append('image', file);

    fetch('/upload3', {
      method: 'POST',
      body: formData
    })
      .then(response => response.json())
      .then(data => {
        if (data.imageUrl) {
          resolve(data.imageUrl);
        } else {
          reject('Upload failed');
        }
      })
      .catch(error => {
        reject('Upload error');
      });
  });
}

// Count characters
function updateCharCount() {
  let contentText = quill.getText();
  let charCount = contentText.length - 1; // Exclude the last newline character
  document.getElementById('charCount').innerText = charCount;
}

// Listen to text-change event from Quill editor
quill.on('text-change', function () {
  updateCharCount();
});

// Initial call
updateCharCount();