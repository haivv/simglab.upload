var Size = Quill.import('attributors/style/size');
                    Size.whitelist = ['12px', '16px', '20px', '24px', '28px'];
                    Quill.register(Size, true);

                    var quill = new Quill('#editor', {
                      theme: 'snow',
                      placeholder: 'Type your content...',
                      modules: {
                        toolbar: [
                          ['bold', 'italic', 'underline'],
                          [{ 'color': [] }],
                          [{ 'font': [] }],
                          [{ 'align': '' }, { 'align': 'center' }, { 'align': 'right' }],
                          [{ 'size': ['12px', '16px', '20px', '24px', '28px'] }],
                          ['image', 'video', 'link']
                        ],
                        imageResize: {}
                      }
                    });

                    function saveContent() {
                      const pro_content = quill.root.innerHTML;
                      let cat_id = document.getElementById('selectOption').value;
                      let pro_title = document.getElementById('pro_title').value;
                      let pro_id = document.getElementById('pro_id').value;
                      // let txtfileupload = document.getElementById('sendFileName').innerHTML;

                      let formData = new URLSearchParams();
                      formData.append('pro_content', pro_content);
                      formData.append('cat_id', cat_id);
                      formData.append('pro_title', pro_title);
                      formData.append('pro_id', pro_id);
                      // formData.append('txtfileupload', txtfileupload);

                      fetch('/admin/product-proUpdate', {
                        method: 'POST',
                        headers: {
                          'Content-Type': 'application/x-www-form-urlencoded',
                        },
                        body: formData
                      })
                      .then(window.location.href = '/admin/product');
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

                        fetch('/upload2', {
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
                    quill.on('text-change', function() {
                      updateCharCount();
                    });

                    // Initial call
                    updateCharCount();